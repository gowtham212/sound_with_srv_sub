import rospy
from std_msgs.msg import String

import alsaaudio
import os
import subprocess

def set_volume(volume_level):
    mixer = alsaaudio.Mixer()
    current_mute_state = mixer.getmute()[0]
    if current_mute_state:
        mixer.setmute(False)  # Unmute if currently muted
    mixer.setvolume(volume_level)

def play_song(song_path, volume_percent):
    try:
        subprocess.Popen(['killall', 'mpg123']).wait()
        set_volume(volume_percent)  # Adjust volume before playing
        subprocess.Popen(['mpg123', '-q', '--gain', str(volume_percent), song_path], stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL).wait()
    except KeyboardInterrupt:
        print("\nPlayback interrupted.")

def song_choice_callback(data):
    choice = data.data
    if choice == '1':
        song_path = os.path.join(folder_path, songs[0])
        volume_percent = volume_percentage
        play_song(song_path, volume_percent)
    elif choice == '2':
        song_path = os.path.join(folder_path, songs[1])
        volume_percent = volume_percentage
        play_song(song_path, volume_percent)
    else:
        subprocess.Popen(['killall', 'mpg123']).wait()
        print("Invalid choice. Please try again.")

if __name__ == "__main__":
    rospy.init_node('music_player', anonymous=True)
    folder_path = "/home/amr/songs"  # Change this to your folder path
    songs = ["one.mp3", "two.mp3"]
    volume_percentage = 100  # Default volume percentage

    rospy.Subscriber('song_choice', String, song_choice_callback)

    rospy.spin()

