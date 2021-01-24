#!/usr/bin/python3
import subprocess
import sys

subprocess.check_call([sys.executable, "-m", "pip", "install", "-r", "requirements.txt"])
