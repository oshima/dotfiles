function m
  test "$MUSIC_DIR"; or set -g MUSIC_DIR ~/Music
  test "$MUSIC_EXT"; or set -g MUSIC_EXT m4a mp3

  test "$argv[1]" = '-q'
  and begin; killall afplay ^/dev/null; return 0; end

  find $MUSIC_DIR -type f | \
  grep '\.\('(string join '\|' $MUSIC_EXT)'\)$' | \
  iconv -c -f UTF-8-MAC -t UTF-8 | read -z files

  echo -n "$files" | \
  sed -e 's/^.*\/\(.*\)\.[^.]*$/\1/' -e 's/^[-0-9]* //' | \
  sort | fzf | read title

  test "$title"; or return 0

  killall afplay ^/dev/null
  afplay -v .5 -q 1 (echo "$files" | grep -m 1 "$title\.") &
end
