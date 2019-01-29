
######################  Settings for Color Prompt  #############################


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
unset color_prompt force_color_prompt

################################################################################

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \t\a\]$PS1"
    ;;
*)
    ;;
esac

# weather
alias wer='curl wttr.in?0'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

alias ll='ls -alFG'
alias ls='ls -CFG'
alias l='ls -CFG1'
alias home='cd ~'
alias gs='git status'
# Easier directory navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'


export EDITOR=vim

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
