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
        print("Volume is currently muted")
    else:
        print("Current volume:", current_volume)

# Example usage
if __name__ == "__main__":
    print_volume_status()
    action = input("Enter the desired volume level (0-100), or 'm' to mute/unmute: ")
    if action.isdigit() and 0 <= int(action) <= 100:
        set_volume(int(action))
    elif action == 'm':
        toggle_mute()
    else:
        print("Invalid input. Please enter a number between 0 and 100, or 'm' to mute/unmute.")

