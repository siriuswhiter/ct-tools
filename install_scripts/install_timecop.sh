#!/bin/bash

# Install dependencies:
sudo apt install -y valgrind clang

# Collect timecop:
wget https://post-apocalyptic-crypto.org/timecop/example.zip
unzip example.zip
rm example.zip
mv example timecop

# Showcase:
cd timecop
./run_example.sh
