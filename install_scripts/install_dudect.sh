#!/bin/bash

# Install dependencies:
sudo apt install -y gcc make python3 python-is-python3

# Collect dudect:
wget https://github.com/oreparaz/dudect/archive/master.zip -O dudect.zip
unzip dudect.zip
rm dudect.zip
mv dudect-master dudect

# Showcase:
cd dudect
make
python3 test.py
