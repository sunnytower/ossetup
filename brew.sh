#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
#BREW_PREFIX=$(brew --prefix)
brew tap homebrew/cask-versions
brew tap homebrew/cask
brew tap homebrew/core
brew tap homebrew/cask-fonts
# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
#ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
#brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
#brew install gnu-sed --with-default-names


# Install `wget` with IRI support.
brew install wget --with-iri
brew install curl
# Install GnuPG to enable PGP-signing commits.
#brew install gnupg

# Install more recent versions of some macOS tools.
#brew install git already build-in
#brew install openssh
brew install grep
brew install tmux
#brew install php
#brew install gmp

# Install font.
brew install --cask font-hack-nerd-font
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xzb
# Install other useful binaries.
#brew install ack
#brew install exiv2
#brew install git
#brew install git-lfs
#brew install gs
#brew install imagemagick --with-webp
#brew install lua
#brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install rlwrap
#brew install ssh-copy-id
#brew install tree
#brew install vbindiff
#brew install zopfli

#my gui
brew install surge
brew install alacritty
brew install karabiner-elements
brew install appcleaner
brew install 1password
brew install intellij-idea-ce
brew install alfred
brew install flux
brew install google-chrome
brew install onyx
brew install shottr
brew install the-unarchiver
brew install spotify
#extra(maybe not install )
brew install eudic

# Remove outdated versions from the cellar.
brew install alacritty
brew cleanup
