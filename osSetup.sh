#!/usr/bin/env bash
case "$(uname -s)" in
    Darwin)
    
    # Ask for the administrator password upfront
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until `.macos` has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    #按住重复按键
    defaults write -g ApplePressAndHoldEnabled -bool false
    #允许任意来源
    sudo spctl --master-disable
    
    # take screenshots as jpg (usually smaller size) and not png
    defaults write com.apple.screencapture type jpg

    # do not open previous previewed files (e.g. PDFs) when opening a new one
    defaults write com.apple.Preview ApplePersistenceIgnoreState YES

    # show Library folder
    chflags nohidden ~/Library

    # show hidden files
    defaults write com.apple.finder AppleShowAllFiles YES

    # show path bar
    defaults write com.apple.finder ShowPathbar -bool true

    # show status bar
    defaults write com.apple.finder ShowStatusBar -bool true

    killall Finder;
    ;;
    
    Linux)
    sudo apt update && sudo apt upgrade
    apt install -y build-essential cgdb gdb git python3 python3-pip valgrind openjdk-17-jdk
    apt install -y zsh
    chsh -s /bin/zsh
    ;;






esac
