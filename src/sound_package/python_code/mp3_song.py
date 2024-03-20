import os
import subprocess

def play_song(song_path):
    subprocess.Popen(['mpg123', '-q', song_path]).wait()

def main():
    folder_path = "/home/fldec/songs"  # Change this to your folder path
    songs = ["one.mp3", "two.mp3"]

    while True:
        print("Press 1 to play 'one.mp3'")
        print("Press 2 to play 'two.mp3'")
        print("Press 0 to exit")
        choice = input("Enter your choice: ")

        if choice == '1':
            song_path = os.path.join(folder_path, songs[0])
            play_song(song_path)
        elif choice == '2':
            song_path = os.path.join(folder_path, songs[1])
            play_song(song_path)
        elif choice == '0':
            print("Exiting...")
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()

