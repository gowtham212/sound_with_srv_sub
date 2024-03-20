#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
from sound_package.srv import PlaySong, StopSong  # Update this line

counter1 = 0
counter2 = 0
counter3 = 0
counter4 = 0

def callback(data):
    global counter1, counter2, counter3, counter4  # Declare all global variables

    if data.data == 1:
        # First condition
        rospy.loginfo("Executing first condition")
        if counter1 == 0:
            rospy.loginfo("first condition")
            counter1 += 1
            # Call the service to play "one.mp3"
            rospy.wait_for_service('/play_song')
            try:
                play_song = rospy.ServiceProxy('/play_song', PlaySong)
                response = play_song("one.mp3")
                rospy.loginfo("Response from /play_song service: %s" % response)
            except rospy.ServiceException as e:
                rospy.logerr("Service call failed: %s" % e)
        counter2 = 0
        counter3 = 0
        counter4 = 0
            
    elif data.data == 2:
        # Second condition
        rospy.loginfo("Executing second condition")
        if counter2 == 0:
            rospy.loginfo("second condition")
            counter2 += 1
            # Call the service to play "two.mp3"
            rospy.wait_for_service('/play_song')
            try:
                play_song = rospy.ServiceProxy('/play_song', PlaySong)
                response = play_song("two.mp3")
                rospy.loginfo("Response from /play_song service: %s" % response)
            except rospy.ServiceException as e:
                rospy.logerr("Service call failed: %s" % e)
        counter1 = 0
        counter3 = 0
        counter4 = 0

    elif data.data == 3:
        # Third condition
        rospy.loginfo("Executing third condition")
        if counter3 == 0:
            rospy.loginfo("third condition")
            counter3 += 1
            # Call the service to play "three.mp3"
            rospy.wait_for_service('/play_song')
            try:
                play_song = rospy.ServiceProxy('/play_song', PlaySong)
                response = play_song("three.mp3")
                rospy.loginfo("Response from /play_song service: %s" % response)
            except rospy.ServiceException as e:
                rospy.logerr("Service call failed: %s" % e)
        counter1 = 0
        counter2 = 0
        counter4 = 0

    elif data.data == 4:
        # Fourth condition
        rospy.loginfo("Executing fourth condition")
        if counter4 == 0:
            rospy.loginfo("fourth condition")
            counter4 += 1
            # Call the service to stop the music
            rospy.wait_for_service('/stop_song')
            try:
                stop_music = rospy.ServiceProxy('/stop_song', StopSong)
                response = stop_music()
                rospy.loginfo("Response from /stop_song service: %s" % response)
            except rospy.ServiceException as e:
                rospy.logerr("Service call failed: %s" % e)
        counter1 = 0
        counter2 = 0
        counter3 = 0

    else:
        # Default action
        rospy.loginfo("Subscribed data: %d" % data.data)

def song_listener():
    rospy.init_node('song_listener', anonymous=True)
    rospy.Subscriber("song_topic_sub", Int32, callback)
    rospy.loginfo("Listener node started.")
    rospy.spin()

if __name__ == '__main__':
    song_listener()
