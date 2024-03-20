import alsaaudio  #sudo pip3 install pyalsaaudio
import os
import subprocess

def set_volume(volume_level):
    mixer = alsaaudio.Mixer()
    current_mute_state = mixer.getmute()[0]
    if current_mute_state:
        mixer.setmute(False)  # Unmute if currently muted
    mixer.setvolume(volume_level)
    #print_volume_status()
'''
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
'''

def play_song(song_path, volume_percent):
    try:
        set_volume(volume_percent)  # Adjust volume before playing
        subprocess.Popen(['mpg123', '-q', '--gain', str(volume_percent), song_path], stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL).wait()
    except KeyboardInterrupt:
        print("\nPlayback interrupted.")

if __name__ == "__main__":
    #print_volume_status()
    folder_path = "/home/amr/songs"  # Change this to your folder path
    songs = ["one.mp3", "two.mp3"]
    
    while True:
        print("\nPress '1' to play 'one.mp3' or '2' to play 'two.mp3' with volume percentage.")
        print("Press 'q' to quit.")

        choice = input("Enter your choice: ")

        if choice == '1':
            song_path = os.path.join(folder_path, songs[0])
            volume_percent = int(input("Enter the volume percentage (0-100): "))
            play_song(song_path, volume_percent)
        elif choice == '2':
            song_path = os.path.join(folder_path, songs[1])
            volume_percent = int(input("Enter the volume percentage (0-100): "))
            play_song(song_path, volume_percent)
        elif choice == 'q':
            print("Exiting...")
            break
        else:
            print("Invalid choice. Please try again.")

