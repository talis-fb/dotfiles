alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias v="nvim"
alias nv="nvim"

alias k="kubectl"

alias cat="bat"
alias ls="exa"

alias gadd="git add"
alias gbr="git branch"
alias gck="git checkout"
alias gcl="git clone"
alias gcm="git commit"
alias gcmm="git commit -m"
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

function dotfiles
    cd ~/.dotfiles
end

alias t="tmux"
alias tt="tmux a || tmux" # Entra no tmux, mas se nao houver um server, cria um novo
alias ttp ="tmuxp load"

alias cdr="ranger"
