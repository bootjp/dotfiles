alias ll='ls -laGh'
alias vim='nvim'
source ~/git-prompt.sh
source ~/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
shopt -s histappend
export LANG="ja_JP.UTF-8"
export HISTTIMEFORMAT='%Y-%m-%dT%T%z : '
export GOPATH=$HOME/goproject
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

function __show_exit_code() {
  local status=$(echo ${PIPESTATUS[@]})
  local SETCOLOR_FAILURE="echo -en \\033[1;31m"
  local SETCOLOR_NORMAL="echo -en \\033[0;39m"

  for s in ${status}
  do
    if [ ${s} -ne 0 ]; then
      ${SETCOLOR_FAILURE}
      echo -e "[\xe2\x9a\xa0\xef\xb8\x8f  -> ${status// /|}]"
      ${SETCOLOR_NORMAL}
    fi
  done
}
PROMPT_COMMAND='__show_exit_code;'${PROMPT_COMMAND//__show_exit_code;/}

