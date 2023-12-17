#!/usr/bin/python3
import os
import pyperclip
import pytesseract
import getpass

# This section takes a screenshot using the built in MacOS functionality.

# gets the logged in username (used in the next command to set the default path to place screenshots)
get_username = getpass.getuser()
path = "/Users/" + get_username + "/Desktop/grabtext_app_screenshot.png"

# -x stops the screenshot sound from being played
# -i allows the user to switch from mouse or window selection modes
screenshot_cmd = "screencapture -x -i " + path
os.system(screenshot_cmd)

# This section uses the pytesseract library to pull text from the screenshot taken earlier
pytesseract.pytesseract.tesseract_cmd = r'/usr/local/bin/tesseract'
image_to_text = pytesseract.image_to_string(path)

# output of the image_to_text command is auto-magically copied to the clipboard using pyperclip
pyperclip.copy(image_to_text)

# This section deletes the screenshot
if os.path.exists(path):
        delete_success_message = f"Target file at | {path} | was successfully deleted"
        print(delete_success_message)
        os.remove(path)
else:
        print("ERROR - The file you are trying to delete does not exist!")
