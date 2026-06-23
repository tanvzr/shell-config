#!/usr/bin/env bash

# ============================================================================
# Interactive shell detection
# ============================================================================

iatest=$(expr index "$-" i)


# ============================================================================
# Startup programs
# ============================================================================

# Fastfetch greeting
if [ -f /usr/bin/fastfetch ]; then
    fastfetch
fi


# ============================================================================
# System definitions
# ============================================================================

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


# ============================================================================
# Bash completion
# ============================================================================

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


# ============================================================================
# Environment variables
# ============================================================================

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export LINUXTOOLBOXDIR="$HOME/linuxtoolbox"

export EDITOR=nvim
export VISUAL=nvim

export HISTFILESIZE=10000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T"

export HISTCONTROL=erasedups:ignoredups:ignorespace

export CLICOLOR=1

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


# ============================================================================
# Shell behavior
# ============================================================================

shopt -s checkwinsize
shopt -s histappend

PROMPT_COMMAND='history -a'

[[ $- == *i* ]] && stty -ixon


if [[ $iatest -gt 0 ]]; then
    bind "set bell-style none"
    bind "set completion-ignore-case on"
    bind "set show-all-if-ambiguous On"
fi


# ============================================================================
# Load custom modules
# ============================================================================

# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi


# Functions
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi


# ============================================================================
# Prompt
# ============================================================================

eval "$(starship init bash)"

eval "$(zoxide init bash)"
