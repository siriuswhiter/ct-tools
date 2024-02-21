#!/bin/bash

# Install dependencies:
sudo apt install -y curl git cmake gcc g++ llvm zlib1g-dev clang
curl --proto "=https" --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
wget https://github.com/Boolector/boolector/archive/3.2.1.tar.gz -O boolector.tar.gz
tar -xzvf boolector.tar.gz
rm boolector.tar.gz
cd boolector-3.2.1/
./contrib/setup-lingeling.sh
./contrib/setup-btor2tools.sh
./configure.sh --shared --prefix /usr/
cd build
make
sudo make install
cd ../..
rm -rf boolector-3.2.1

# Collect pitchfork:
git clone https://github.com/PLSysSec/haybale-pitchfork pitchfork


# Showcase:
cd pitchfork
cargo build --features=llvm-10
cargo test --features=llvm-10
