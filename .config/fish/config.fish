# No greeting
set fish_greeting

# Editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# Homebrew on macOS
if test -d /opt/homebrew/bin
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
end

# User scripts
fish_add_path ~/.local/bin

# Dotfiles bare repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Common aliases
alias vim='nvim'
alias ll='ls -lah'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'

# Safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Helpers
function mkcd
    mkdir -p $argv[1]
    cd $argv[1]
end

function reload
    source ~/.config/fish/config.fish
end
