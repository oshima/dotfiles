e() {
  if [ -z "$(ps ax | grep 'emacs --daemon' | grep -v grep)" ]; then
    echo 'Starting Emacs daemon...'
    emacs --daemon > /dev/null 2>&1
  fi
  emacsclient -nw $*
}

alias ekill='emacsclient -e "(kill-emacs)"'
