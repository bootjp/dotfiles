#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# support fn + backspace = delete https://github.com/tmux/tmux/issues/597#issuecomment-469405884
export TERM=xterm
export PATH=~/.bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=~/go/bin:$PATH
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
