source ~/.bashrc
export SSH_AUTH_SOCK=$(launchctl getenv SSH_AUTH_SOCK)
export LD_LIBRARY_PATH=/usr/local/mecab-java:$LD_LIBRARY_PATH
export PATH="/usr/local/sbin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)


export PATH="$HOME/.cargo/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
