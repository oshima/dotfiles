function e
  if test "$argv[1]" = '-q'
    emacsclient -e '(kill-emacs)'
    return $status
  end
  if test -z (ps ax | grep 'emacs --daemon' | grep -v grep)
    echo 'Starting Emacs daemon...'
    emacs --daemon >/dev/null ^&1
  end
  emacsclient -nw $argv
end
