#!/bin/bash

if [[ $(brew deps tesseract | head -c1 | wc -c) -ne 0 ]]; then
    echo "Removing tesseract..."
	echo "Additional dependancies that will be uninstalled with tesseract..."
	brew deps tesseract
	brew uninstall tesseract

    echo "removing additional dependencies..."
    pip uninstall -y -r requirements.txt

    echo "removing tesseract supported languages..."
    brew uninstall tesseract-lang

else
    echo "tesseract cannot be found or is not currently installed..."
fi
