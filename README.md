# My Dotfiles
***Don’t blindly use my settings unless you know what that entails. Use at your own risk!***

# [setup](./setup.sh)

# Macos Setup
## System Preference 
* keyboard
  * text
    * disable "Capitalise word automatically"
    * disable "Add full stop with double-space"
    * disable "Use smart quotes and dashes"
    * use " for double quotes
    * use ' for single quotes
* spotlight
  * Disable Spotlight except for Applications and System Preferences
* copy other preference from my current machine.

## install [homebrew](https://brew.sh/)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
  run the [brew.sh](./brew.sh)

# Setup Zsh
## install [zimfw](https://github.com/zimfw/zimfw)
* With `curl`:

      curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

* With `wget`:

      wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

## Install [Chezmoi](https://www.chezmoi.io/install/)


# Sync My [Dotfiles](https://github.com/sunnytower/dotfiles)
