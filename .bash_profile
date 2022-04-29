#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# using x only
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

export PATH=/home/bootjp/.tiup/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
