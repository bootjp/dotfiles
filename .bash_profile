#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# using x only
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
