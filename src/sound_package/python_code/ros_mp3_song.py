#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
import os
import subprocess

def play_song(song_path):
    subprocess.Popen(['mpg123', '-q', song_path]).wait()

def callback(data):
    choice = data.data

    if choice == 1:
        subprocess.Popen(['killall', 'mpg123']).wait()
        song_path = os.path.join(folder_path, songs[0])
        play_song(song_path)
    elif choice == 2:
        subprocess.Popen(['killall', 'mpg123']).wait()
        song_path = os.path.join(folder_path, songs[1])
        play_song(song_path)
    elif choice == 0:
        print("Exiting...")
        # Stop playback if any
        subprocess.Popen(['killall', 'mpg123']).wait()

def listener():
    rospy.init_node('mp3_player', anonymous=True)
    rospy.Subscriber("mp3_command", Int32, callback)
    rospy.spin()

if __name__ == '__main__':
    folder_path = "/home/fldec/songs"  # Change this to your folder path
    songs = ["one.mp3", "two.mp3"]
    listener()

