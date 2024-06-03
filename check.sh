#!/bin/bash

# List of required software
required_software=("stow" "git" "fish" "kitty" "ranger" "nvim" "tmux" "tmuxp")

# Function to check if a command is available
check_software() {
  for software in "${required_software[@]}"; do
    if command -v "$software" &> /dev/null; then
      echo "✅ $software"
    else 
      echo "❌ $software"
    fi
  done
}

check_software
