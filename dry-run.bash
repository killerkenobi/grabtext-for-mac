#!/bin/bash

echo "Additional dependancies that will be uninstalled with tesseract..."
echo "-----------------------"
brew deps tesseract
echo "-----------------------"
printf "When manually uninstalling tesseract via brew, you can choose to use the --ignore-dependencies flag to only uninstall
tesseract while leaving its listed dependencies on your machine by running 'brew uninstall --ignore-dependencies tesseract' \n"

echo "For additional dependencies that will be uninstalled when 'make clean' is run see requirements.txt."