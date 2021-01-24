#!/usr/bin/python3
import os
import pyperclip
import pytesseract
import getpass

#Script written by killerkenobi
#version 1.1.0
"""--------------------------------------------------------"""
"""This section takes a screenshot using the built in MacOS functionality. 
-x stops the screenshot sound from being played
-i allows the user to switch from mouse or window selection modes
the default file path and file name places a screenshot on the user's desktop"""

get_username = getpass.getuser()
path = "/Users/" + get_username + "/Desktop/grabtext_app_screenshot.png"
screenshot_cmd = "screencapture -x -i " + path
os.system(screenshot_cmd)
"""--------------------------------------------------------"""     
 
"""--------------------------------------------------------"""
"""This section pulls text from the screenshot taken earlier using the open-source 
optical character recognition engine pytesseract. The output of the image_to_text command 
is auto-magically copied to the clipboard!"""

pytesseract.pytesseract.tesseract_cmd = r'/usr/local/bin/tesseract'
image_to_text = pytesseract.image_to_string(path)
pyperclip.copy(image_to_text)
"""--------------------------------------------------------"""

"""--------------------------------------------------------"""
"""this section deletes the screenshot by first checking if the default file name exists at the default path.
if the file does not exist then an error is thrown and the program exits normally."""

if os.path.exists(path):
        delete_success_message = f"Target file at| {path} |was successfully deleted"
        print(delete_success_message)
        os.remove(path)
else:
        print("ERROR - The file you are trying to delete does not exist!")
