#!/usr/bin/env python3

import rospy
from sound_package.srv import PlaySong, StopSong  # Update this line
import os
import subprocess
import threading
import signal
##################################sound#########################
from sound_package.srv import SetVolume, ToggleMute
import alsaaudio

def set_volume(volume_level):
    mixer = alsaaudio.Mixer()
    current_mute_state = mixer.getmute()[0]
    if current_mute_state:
        mixer.setmute(False)  # Unmute if currently muted
    mixer.setvolume(volume_level)
    print_volume_status()

def toggle_mute():
    mixer = alsaaudio.Mixer()
    current_mute_state = mixer.getmute()[0]
    mixer.setmute(not current_mute_state)
    print_volume_status()

def print_volume_status():
    mixer = alsaaudio.Mixer()
    current_volume = mixer.getvolume()[0]
    muted = mixer.getmute()[0]
    if muted:
        rospy.loginfo("Volume is currently muted")
    else:
        rospy.loginfo("Current volume: %d" % current_volume)

def handle_set_volume(req):
    set_volume(req.volume)
    return {'success': True}

def handle_toggle_mute(req):
    toggle_mute()
    return {'success': True}
#####################################################################

# Global variables to store the currently playing song and its process
current_song_process = None
current_song_name = None
is_playing = False
lock = threading.Lock()

def play_song(song_name):
    global current_song_process, current_song_name, is_playing

    # Stop the current song if it's playing
    stop_current_song()

    # Start playing the requested song
    song_path = os.path.join(folder_path, song_name)
    
    def play_song_loop():
        global current_song_process, current_song_name, is_playing
        while True:
            current_song_process = subprocess.Popen(['mpg123', '-q', song_path])
            rospy.loginfo("Playing song: %s" % song_name)
            current_song_process.wait()
            with lock:
                if current_song_name != song_name:
                    break

    # Start a new thread for playing the song in a loop
    threading.Thread(target=play_song_loop).start()
    current_song_name = song_name
    is_playing = True

def stop_current_song():
    global current_song_process, current_song_name, is_playing

    # Stop the currently playing song if any
    if current_song_process is not None:
        rospy.loginfo("Stopping the currently playing song: %s" % current_song_name)
        subprocess.Popen(['killall', 'mpg123']).wait()
        current_song_process.terminate()
        current_song_process.wait()
        current_song_name = None
        is_playing = False

def play_song_service(req):
    with lock:
        if req.song_name == 'no':
            stop_current_song()
        else:
            play_song(req.song_name)
    return {'success': True}

def stop_song_service(req):
    with lock:
        stop_current_song()
    return {'success': True}

def signal_handler(sig, frame):
    rospy.loginfo("Exiting...")
    stop_current_song()
    rospy.signal_shutdown("Keyboard Interrupt")
    exit(0)  # Exit the script

if __name__ == '__main__':
    rospy.init_node('mp3_player_server')
    folder_path = "/home/amr/sound_ws/src/sound_package/script"  # Change this to your folder path
    
    # Register the signal handler for Ctrl+C
    signal.signal(signal.SIGINT, signal_handler)
    
    # Create ROS service servers
    rospy.Service('play_song', PlaySong, play_song_service)
    rospy.Service('stop_song', StopSong, stop_song_service)
    rospy.Service('set_volume', SetVolume, handle_set_volume)
    rospy.Service('toggle_mute', ToggleMute, handle_toggle_mute)

    rospy.loginfo("MP3 player service started. Press Ctrl+C to exit.")
    
    # Keep the main thread alive until a signal is received
    signal.pause()



#######  rosservice call /set_volume 90
#######  rosservice call /toggle_mute
#######  rostopic pub /song_topic_sub std_msgs/Int32 "data: 1" --rate 1
#######  rostopic pub /song_topic_sub std_msgs/Int32 "data: 2" --rate 1
#######  rostopic pub /song_topic_sub std_msgs/Int32 "data: 3" --rate 1
#######  rostopic pub /song_topic_sub std_msgs/Int32 "data: 4" --rate 1   ### off
   