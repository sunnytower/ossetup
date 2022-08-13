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


    ;;
    
    Linux)
    sudo apt update && sudo apt upgrade
    apt install -y zsh
    chsh -s /bin/zsh
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    ;;






esac
