#!/bin/bash

echo "Additional dependancies that will be uninstalled with tesseract..."
brew deps tesseract
echo "This is a list of all the tesseract dependencies that will be uninstalled if you run the 'make clean' command."
echo "When manually uninstalling tesseract via brew, you can choose to use the --ignore-dependencies flag to only uninstall"
echo "tesseract while leaving its listed dependencies on your machine by running 'brew uninstall --ignore-dependencies tesseract'"


echo "For additional dependencies that will be uninstalled when 'make clean' is run see requirements.txt."