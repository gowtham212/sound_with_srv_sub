#!/usr/bin/env python3

import rospy
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

if __name__ == "__main__":
    rospy.init_node('volume_control_server')
    rospy.Service('set_volume', SetVolume, handle_set_volume)
    rospy.Service('toggle_mute', ToggleMute, handle_toggle_mute)
    rospy.loginfo("Volume control service started.")
    rospy.spin()
