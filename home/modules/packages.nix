{ pkgs, lib, ... }:

{
    home.packages = with pkgs; [
# Core utilities
        vim
            neovim
            wget
            curl
            tree
            foot
            less

# Neovim / development
            (lib.hiPrio gcc)
            clang
            clang-tools
            gnumake
            cmake
            tree-sitter

#IDE
            vscodium

# Language servers
            lua-language-server
            pyright
            clang-tools
            rust-analyzer
            cmake-language-server
            jdt-language-server

# Language toolchains
            python3
            rustc
            cargo
            openjdk25

#code formatters
            stylua
            ruff
            rustfmt
            google-java-format 

# Screen-shot and clipboard
            slurp
            grim
            wl-clipboard
            cliphist

# Search and rendering
            ripgrep
            bat

# Navigation and files
            eza
            fd
            fzf
            zoxide

# System awareness
            btop
            gdu
            fastfetch

# Git workflow
            git
            gh
            lazygit
            delta

# Prompt / Environment
            starship

# JSON/Data
            jq

# Reference
            tldr

# Desktop environment comp.
            fuzzel

# Volume
            playerctl

# File explorer
            yazi

# Screen-rec
            obs-studio

# Hardware utilities
            pciutils
            usbutils

# Media
            mpv
            imv

# Archives
            zip
            unzip
            p7zip

# Browser
            brave

# Wallpaper
            hyprpaper

# Desktop / GTK utilities
            glib
            dconf
            gsettings-desktop-schemas

#readest
            readest

#emoji
            rofimoji

            ];
}
