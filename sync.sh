#!/bin/bash

dotfiles_dir="$HOME/.dotfiles"

run_stow() {
  # Navigate to the directory containing dotfiles
  cd "$dotfiles_dir" || { echo "Error: Cannot change to $dotfiles_dir"; exit 1; }

  # Stow each subdirectory
  for dir in */; do
    stow -v --no-folding --target="$HOME" "$dir"
  done
}

run_stow