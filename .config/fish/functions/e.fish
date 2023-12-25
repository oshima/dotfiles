function e
  if test "$argv[1]" = '-q'
    emacsclient -e '(kill-emacs)' 2> /dev/null
    return 0
  end
  if test -z (ps x | grep 'emacs --daemon$')
    echo 'Starting Emacs daemon...'
    emacs --daemon > /dev/null 2>&1
  end
  emacsclient -nw $argv
end
