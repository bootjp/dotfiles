alias ll='ls -lah --color'
alias vim='nvim'
#source ~/git-prompt.sh
#source ~/git-completion.bash
setxkbmap jp
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
export LANG="ja_JP.UTF-8"
export HISTTIMEFORMAT='%Y-%m-%dT%T%z : '
