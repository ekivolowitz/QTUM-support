#!/bin/bash

# Installs OSX Command Line Tools. 
xcode-select --install

# Checks if homebrew is installed, and if it is not, then it installs it. 
echo "Checking if Homebrew is installed ..."
which brew 
if [ $? != 0 ]; then
    echo "Installing Homebrew ..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Done installing Homebrew."
fi

echo "Checking if git is installed ..."
which git
if [ $? != 0 ]; then
    echo "Installing git."
    brew install git
    echo "Done installing git."
fi

# Installs relevant libraries from brew
echo "Installing relevant Homebrew packages." 
brew install cmake automake berkeley-db4 libtool boost --c++11 miniupnpc openssl pkg-config protobuf qt libevent
echo "Done installing relevant Homebrew packages."

echo "Cloning qtum source repo."
git clone --recursive https://github.com/qtumproject/qtum.git
echo "Cloned repo."
cd qtum
git submodule update --init --recursive

echo -e "Running autogen and config scripts. \033[91mThis will take a while. Press any key to continue.\033[0m"
read

./autogen.sh
./configure
make

make check

echo "Installing Rust and cargo ..."
brew install rust
brew cask install cargo

echo "Installing ethabi-cli ..."
cargo install ethabi-cli
