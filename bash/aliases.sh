#!/usr/bin/env bash

# ============================================================================
# Editor
# ============================================================================

# Use Neovim as default vim
alias vim='nvim'

# Use Neovim as vi replacement
alias vi='nvim'

# Open vi with sudo
alias svi='sudo vi'

# Open Neovim with spell checking enabled
alias vis='nvim "+set si"'


# ============================================================================
# Directory navigation aliases
# =============================================================================

# Go to web server directory
alias web='cd /var/www/html'

# Go to home directory
alias home='cd ~'

# Go up one directory
alias cd..='cd ..'
alias ..='cd ..'

# Go up multiple directories
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Return to previous directory
alias bd='cd "$OLDPWD"'


# ============================================================================
# System / utility aliases
# ============================================================================

# Send desktop notification after long commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Edit bashrc
alias ebrc='nvim ~/.bashrc'

# View bash help file
alias hlp='less ~/.bashrc_help'

# Show formatted date
alias da='date "+%Y-%m-%d %A %T %Z"'


# ============================================================================
# Safer command replacements
# ============================================================================

# Ask before overwriting files
alias cp='cp -i'

# Ask before moving files
alias mv='mv -i'

# Remove using trash instead of rm
alias rmv='trash -v'

# Create parent directories automatically
alias mkdir='mkdir -p'

# Show detailed process list
alias ps='ps auxf'

# Limit ping to 10 packets
alias ping='ping -c 10'

# Enable colored output in less
alias less='less -R'

# Clear terminal
alias cls='clear'

# Remove files recursively with verbose output
alias rmd='/bin/rm --recursive --force --verbose'

# ============================================================================
# Package / system management
# ============================================================================

# Run apt-get with sudo
alias apt-get='sudo apt-get'

# Multitail with color and no repeat
alias multitail='multitail --no-repeat -c'

# Update clam antivirus database
alias freshclam='sudo freshclam'

# ============================================================================
# AUR / Arch helper
# ============================================================================

# Search and install AUR packages using yay + fzf
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"


# ============================================================================
# ls / directory listing aliases
# ============================================================================

# List hidden files with details
alias la='ls -Alh'

# Colored ls with file type indicators
alias ls='ls -aFh --color=always'

# Sort by extension
alias lx='ls -lXBh'

# Sort by size
alias lk='ls -lSrh'

# Sort by change time
alias lc='ls -ltcrh'

# Sort by access time
alias lu='ls -lturh'

# Recursive listing
alias lr='ls -lRh'

# Sort by modification date
alias lt='ls -ltrh'

# List through pager
alias lm='ls -alh |more'

# Wide format listing
alias lw='ls -xAh'

# Long listing format
alias ll='ls -Fls'

# Alphabetical listing
alias labc='ls -lap'

# Show only files
alias lf="ls -l | egrep -v '^d'"

# Show only directories
alias ldir="ls -l | egrep '^d'"

# List files + hidden files
alias lla='ls -Al'

# Show hidden files
alias las='ls -A'

# Simple long listing
alias lls='ls -l'


# ============================================================================
# Permissions / chmod aliases
# ============================================================================

# Make file executable
alias mx='chmod a+x'

# Remove all permissions recursively
alias 000='chmod -R 000'

# Set read/write permissions recursively
alias 644='chmod -R 644'

# Set read/write for everyone
alias 666='chmod -R 666'

# Set standard executable permissions
alias 755='chmod -R 755'

# Give full permissions (use carefully)
alias 777='chmod -R 777'


# ============================================================================
# Search / information aliases
# ============================================================================

# Search command history
alias h="history | grep "

# Search running processes
alias p="ps aux | grep "

# Show top 10 CPU consuming processes
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Search files recursively
alias f="find . | grep "

# Count files, links and directories
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"

# Check whether command is alias, builtin or file
alias checkcommand="type -t"


# ============================================================================
# Network / system monitoring aliases
# ============================================================================

# Show open network ports
alias openports='netstat -nape --inet'

# Safe reboot
alias rebootsafe='sudo shutdown -r now'

# Force reboot
alias rebootforce='sudo shutdown -r -n now'

# Safe immediate shutdown
alias poweroff='sudo systemctl poweroff'

# Safe reboot
alias rebootnow='sudo systemctl reboot'

# ============================================================================
# Disk / storage aliases
# ============================================================================

# Show disk usage sorted by size
alias diskspace="du -S | sort -n -r |more"

# Show folder sizes
alias folders='du -h --max-depth=1'

# Sort folders by size
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'

# Show mounted filesystems
alias mountedinfo='df -hT'


# ============================================================================
# Directory tree aliases
# ============================================================================

# Show directory tree with colors
alias tree='tree -CAhF --dirsfirst'

# Show directories only tree
alias treed='tree -CAFd'


# ============================================================================
# Archive aliases
# ============================================================================

# Create tar archive
alias mktar='tar -cvf'

# Create bzip2 archive
alias mkbz2='tar -cvjf'

# Create gzip archive
alias mkgz='tar -cvzf'

# Extract tar archive
alias untar='tar -xvf'

# Extract bzip2 archive
alias unbz2='tar -xvjf'

# Extract gzip archive
alias ungz='tar -xvzf'


# ============================================================================
# Logs / security / clipboard
# ============================================================================

# Follow readable log files
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"

# Generate SHA1 checksum
alias sha1='openssl sha1'

# Type clipboard contents after delay
alias clickpaste='sleep 3; xdotool type "$(xclip -o -selection clipboard)"'


# ============================================================================
# Application aliases
# ============================================================================

# Use Kitty remote SSH kitten
alias kssh="kitty +kitten ssh"


# Cleanup unused Docker resources
alias docker-clean='docker container prune -f ; docker image prune -f ; docker network prune -f ; docker volume prune -f'


# Show public/private IP information
alias whatismyip="whatsmyip"


# Restart Hugo user service
alias hug="systemctl --user restart hugo"
