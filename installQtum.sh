#!/bin/bash

# Installs OSX Command Line Tools. 
xcode-select --install

# Checks if homebrew is installed, and if it is not, then it installs it. 
which brew 
if [ $? != 0 ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

which git
if [ $? != 0 ]; then
    brew install git
fi

# Installs relevant libraries from brew
brew install cmake automake berkeley-db4 libtool boost --c++11 miniupnpc openssl pkg-config protobuf qt libevent

git clone --recursive https://github.com/qtumproject/qtum.git
cd qtum
git submodule update --init --recursive

./autogen.sh
./configure
make

make check

brew install rust
brew cask install cargo

cargo install ethabi-cli
