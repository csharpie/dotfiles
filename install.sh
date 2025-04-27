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
elif [ "$machine" == "Mac" ]; then
    echo 'Installing homebrew...'
    # install homebrew
    ## https://brew.sh/
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo 'Installing stow...'
    brew install stow
fi

echo 'Creating symlinks...'
echo 'Creating symlink for bash'
stow -vSt ~ bash
echo 'Creating symlink for git'
stow -vSt ~ git
echo 'Creating symlink for starship'
stow -vSt ~ starship
echo 'Creating symlink for zsh'
stow -vSt ~ zsh
echo 'Completed symlinks'