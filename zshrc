# Path to your oh-my-zsh installation.
ZSH=~/.oh-my-zsh/
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"

# List of plugins used
plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting )
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
alias python=python3
export PATH="$PATH:/home/droszman/.local/share/gem/ruby/3.2.0/bin"

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Helpful aliases
alias  c='clear' # clear terminal
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list availabe package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
alias vc='code' # gui code editor
alias c="clear"
alias nv="nvim"
alias lv="~/.local/bin/lvim"
alias tn="tmux new ~/.config/tm-sess.sh"
alias t="tmux attach"
alias lg="lazygit"
alias cdd='cd ~/ && cd "$(find -type d | fzf)"'
alias bcpp='cmake -S . -B build && bear -- cmake --build build'
alias bp='bpython'
alias nv='nvim'
alias bat='batcat'
# Handy change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'
alias cd='z'
alias op='xdg-open'

eval "$(zoxide init zsh)"
export PATH=$HOME/.local/bin:$PATH
