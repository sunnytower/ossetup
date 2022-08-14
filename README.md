# My Dotfiles
***Don’t blindly use my settings unless you know what that entails. Use at your own risk!***

# [setup](./setup.sh)

# macos setup
## System Preference 
* keyboard
  * Text
    * disable "Capitalise word automatically"
    * disable "Add full stop with double-space"
    * disable "Use smart quotes and dashes"
    * use " for double quotes
    * use ' for single quotes
* Spotlight
  * Disable Spotlight except for Applications and System Preferences
* copy other preference from my current machine.

## install [homebrew](https://brew.sh/)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
  run the [brew.sh](./brew.sh)

# setup zsh
## install [zimfw](https://github.com/zimfw/zimfw)
* With `curl`:

      curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

* With `wget`:

      wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

## install [chezmoi](https://www.chezmoi.io/install/)


# sync my [dotfiles](https://github.com/sunnytower/dotfiles)
