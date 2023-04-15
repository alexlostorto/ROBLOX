# Detect keypresses
import keyboard

# Add delays
import time


HOTKEY = 'F1'


def main():
    keyboard.wait(HOTKEY)
    keyboard.send("esc")
    time.sleep(0.1)
    keyboard.send("l")
    time.sleep(0.1)
    keyboard.send("enter")


if __name__ == '__main__':
    main()
