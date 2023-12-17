#!/bin/bash

if [[ $(brew deps tesseract | head -c1 | wc -c) -ne 0 ]]; then
    echo "Removing any older installations of tesseract..."
	brew uninstall tesseract
    echo "Installing new version of tesseract..."
    brew install tesseract
    
    echo "installing python dependencies..."
    pip3 install -r requirements.txt

    chmod +x grabtext.py
else
    echo "tesseract is not currently installed..."
    echo "Installing new version of tesseract..."
    brew install tesseract
fi