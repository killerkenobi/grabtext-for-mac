#!/bin/bash

if [[ $(brew deps tesseract | head -c1 | wc -c) -ne 0 ]]; then
    echo "Removing tesseract..."
	echo "Additional dependancies that will be uninstalled with tesseract..."
	brew deps tesseract
	brew uninstall tesseract

    # remove python dependencies (pytesseract)
    # remove keyboard shortcut to run the program (command + shift + 0)
else
    echo "tesseract cannot be found or is not currently installed..."
fi
