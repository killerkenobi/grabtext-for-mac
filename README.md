# grabtext-for-Mac
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

The grabtext.py program pulls text out of screenshots. You can use this program to pull text out of nearly anything you can take a screenshot of, with a few limitations of course :). This version is for MacOS.


Installation steps:

    1) Clone the grabtext-for-Mac repo

    2) Install the homebrew package manager from the terminal

    3) Install pytesseract using the homebrew package manager
          brew install tesseract
    
    4) make both the setup.py and grabtext.py files executable
          sudo chmod +x setup.py && sudo chmod +x grabtext.py

    5) Run the setup.py script which will install the necessary dependencies 
       for running grabtext.py
          ./setup.py

    6) Run the grabtext.py program
          ./grabtext.py
          
          - This program uses the built-in MacOS screenshot feature
          - The main functionality comes from pytesseract which will take 
            the screenshot and pull text out of it


Things to look out for:

    - Screenshots taken through the grabtext.py program will automatically be deleted after an execution
    - pytesseract does not not really like pulling text from dark backgrounds

Troubleshooting tips:

    The grabtext.py program will automatically populate a path to store the screenshot. 
    If you are getting errors related to the screenshot not being found then you may need 
    to alter the code to include the proper absolute file path for your system.
    
          ex. "/Users/[insert user name here]/Desktop/grabtext_app_screenshot.png"
