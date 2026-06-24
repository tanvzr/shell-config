#!/usr/bin/env bash

# ============================================================================
# Editor
# ============================================================================

alias vim='nvim'
alias vi='nvim'
alias svi='sudo nvim'
alias vis='nvim "+set spell"'

# ============================================================================
# Navigation
# ============================================================================

alias home='cd ~'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias bd='cd "$OLDPWD"'

# ============================================================================
# File operations
# ============================================================================

alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias cls='clear'

# ============================================================================
# ls
# ============================================================================

alias ls='ls -aFh --color=auto'

alias la='ls -A'
alias ll='ls -Alh'
alias lla='ls -Alh'

alias lk='ls -lSrh'      # size
alias lt='ls -ltrh'      # time
alias lr='ls -lRh'       # recursive

alias lf="ls -l | grep -v '^d'"
alias ldir="ls -l | grep '^d'"

# ============================================================================
# Search / Info
# ============================================================================

alias h='history | grep'
alias p='ps aux | grep'

alias ps='ps auxf'

alias topcpu='ps -eo pcpu,pid,user,args --sort=-pcpu | head'

# ============================================================================
# Storage
# ============================================================================

alias folders='du -h --max-depth=1'
alias mountedinfo='df -hT'

# ============================================================================
# Tree
# ============================================================================

alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'

# ============================================================================
# Archives
# ============================================================================

alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'

alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# ============================================================================
# Networking
# ============================================================================

alias ping='ping -c 10'
alias openports='ss -tulpn'

# ============================================================================
# Power
# ============================================================================

alias poweroff='sudo systemctl poweroff'
alias rebootnow='sudo systemctl reboot'

# ============================================================================
# Git
# ============================================================================

alias g='git'

alias gs='git status'
alias ga='git add'
alias gaa='git add .'

alias gc='git commit'
alias gcm='git commit -m'

alias gp='git push'
alias gpl='git pull'
alias gplr='git pull --rebase origin main'

alias gb='git branch'
alias gco='git checkout'

alias gd='git diff'
alias gds='git diff --staged'

alias gl='git log --oneline --graph --decorate'

