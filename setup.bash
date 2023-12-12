#!/bin/bash

if [[ $(brew deps tesseract | head -c1 | wc -c) -ne 0 ]]; then
    echo "Removing any older installations of tesseract..."
	echo "Additional dependancies that will be uninstalled with tesseract..."
	brew deps tesseract
	brew uninstall tesseract
    echo "Installing new version of tesseract..."
    brew install tesseract

    # install python dependencies
    # make python script files executable
    # add a keyboard shortcut to run the program (command + shift + 0)
else
    echo "tesseract is not currently installed..."
    echo "Installing new version of tesseract..."
    brew install tesseract
fi