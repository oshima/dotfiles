function music
  test "$MUSIC_DIR"; or set -g MUSIC_DIR ~/Dropbox/Music

  test "$argv[1]" = '-q'
  and begin; killall afplay; return $status; end

  find "$MUSIC_DIR" -type f | \
  iconv -f UTF-8-MAC -t UTF-8 ^/dev/null | read -z files

  echo "$files" | grep -v '^$' | \
  sed -e 's/^.*\///' -e 's/\(.*\)\(\.[^.]*\)$/\1/' -e 's/^[0-9-]* //' | \
  sort | peco | read title

  test "$title"; or return 0

  echo "$files" | grep "$title" | read file

  afplay -v 0.5 -q 1 "$file" &
end
