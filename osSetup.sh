#!/usr/bin/env bash
case "$(uname -s)" in
    Darwin)
    
    # Ask for the administrator password upfront
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until `.macos` has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    #按住重复按键
    defaults write -g ApplePressAndHoldEnabled -bool false
    # Set a blazingly fast keyboard repeat rate
    defaults write NSGlobalDomain KeyRepeat -int 1
    defaults write NSGlobalDomain InitialKeyRepeat -int 10 
    #允许任意来源
    sudo spctl --master-disable
    # do not open previous previewed files (e.g. PDFs) when opening a new one
    defaults write com.apple.Preview ApplePersistenceIgnoreState YES
    # Finder: show all filename extensions
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    # show Library folder
    chflags nohidden ~/Library
    # show path bar
    defaults write com.apple.finder ShowPathbar -bool true

    # show status bar
    defaults write com.apple.finder ShowStatusBar -bool true

    killall Finder;
    #Disable the sound effects on boot
    sudo nvram SystemAudioVolume=" " 
    # Disable the “Are you sure you want to open this application?” dialog
    defaults write com.apple.LaunchServices LSQuarantine -bool false
    # Avoid creating .DS_Store files on network or USB volumes
    defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
    defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
    
    ;;
    
    Linux)
    sudo apt update && sudo apt upgrade
    apt install -y build-essential cgdb gdb git python3 python3-pip valgrind openjdk-17-jdk
    apt install -y zsh
    chsh -s /bin/zsh
    ;;






esac
