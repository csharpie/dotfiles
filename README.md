# dotfiles

All the dotfiles to rule them all.

## Getting Started

### Prerequisites

- Linux (Ubuntu)

  ```bash
  # install stow
  sudo apt install stow
  ```

- OSX
  ```bash
  # install homebrew
  ## https://brew.sh/
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

### Installation

- Linux (Ubuntu)

  ```bash
  sudo apt install stow
  cd ~/.dotfiles
  bash dotfile_prep.sh
  ```

- OSX

  ```bash
  brew install stow
  cd ~/.dotfiles
  bash dotfile_prep.sh
  ```

## Attributions

These are the articles and videos that helped me get my setup going.

- [Dotfiles! Here's how I organzie them.](https://www.youtube.com/watch?v=5oXy6ktYs7I) by Andrew Burgess
- [How I manage my dotfiles with GNU Stow](https://tamerlan.dev/how-i-manage-my-dotfiles-using-gnu-stow/) by Tamerlan Gudabayev
- [Manage Your Dotfiles Like a Superhero](https://www.jakewiesler.com/blog/managing-dotfiles) by Jake Wiesler
- [Un terminal transposable grâce aux dotfiles](https://alexisjanvier.net/blog/un-terminal-transposable-grace-aux-dotfiles/) by Alexis Janvier
