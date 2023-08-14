# desativa mensagem de boas-vindas
set -U fish_greeting

# directory
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias v="nvim"
alias nv="nvim"

alias cat="bat"
alias ls="exa"
function ll
    ls -la $argv
end


# git
alias gadd="git add"
alias gbr="git branch"
alias gck="git checkout"
alias gcl="git clone"
alias gcmm="git commit -m"
alias gcom="git commit"
alias gdff="git diff"
alias git-config-email="git config --global user.email"
alias git-config-name="git config --global user.name"
alias gl="git log --graph --decorate --oneline $argv"
alias gla="git log --all --graph --decorate --oneline $argv"
alias glog="git log"
alias gpull="git pull"
alias gpush="git push"
alias gst="git status"
alias gftch="git fetch"
alias gftch="git fetch"
alias gstash="git stash"
alias greset="git reset"
alias grestore="git restore"



# Manage of dotfiles
function dotfiles
    cd ~/.dotfiles
end

function fishrc
    nvim ~/.config/fish/config.fish
end


# Shortcut to Apps
alias t="tmux"
alias tt="tmux a || tmux" # Entra no tmux, mas se nao houver um server, cria um novo
alias ttp ="tmuxp load"

alias p-sy="pipenv sync"
alias p-sh="pipenv shell"

function cdr
    ranger $argv
end

function fire
    firefox --private-window $argv
end

# Variables
export VISUAL='nvim';
export EDITOR='nvim';
export TERM=xterm-256color

