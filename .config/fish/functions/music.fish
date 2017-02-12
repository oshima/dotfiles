function music
  if test -z "$MUSIC_DIR"
    set -g MUSIC_DIR ~/Dropbox/Music
  end

  if test "$argv[1]" = '-q'
    killall afplay
    return $status
  end

  find "$MUSIC_DIR" -type f | \
  iconv -f UTF-8-MAC -t UTF-8 | read -z files

  echo "$files" | grep -v '^$' | \
  sed -e 's/^.*\///' -e 's/\..*$//' -e 's/^[0-9-]* //' | \
  peco | read title

  if test -z "$title"
    return 0
  end

  echo "$files" | grep -m 1 "$title" | read file

  afplay -v 0.5 -q 1 "$file" &
end
