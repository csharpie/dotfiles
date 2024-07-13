#!/bin/bash

# *nix check borrowed from
## https://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux 
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    MSYS_NT*)   machine=Git;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ "$machine" == "Linux" ]; then
    echo 'Installing stow...'
    sudo apt install stow
elif [ "$machine" == "Darwin" ]; then
    echo 'Installing homebrew...'
    # install homebrew
    ## https://brew.sh/
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo 'Installing stow...'
    brew install stow
fi

echo 'Creating symlinks...'
echo 'Creating symlink for .config/'
stow .config/
echo 'Creating symlink for bash'
stow bash
echo 'Creating symlink for git'
stow git
echo 'Creating symlink for zsh'
stow zsh
echo 'Completed symlinks'