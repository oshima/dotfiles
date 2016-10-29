MUSIC_DIR=~/Dropbox/Music

music() {
  if [ "$1" = end ]; then
    killall afplay; return 0
  fi
  local files=$(find "$MUSIC_DIR" -type f | iconv -f UTF8-MAC -t UTF8)
  local title=$(
    echo "$files" |
    sed -e 's/^.*\///' -e 's/\..*$//' -e 's/^[0-9-]* //' |
    peco | head -n 1
  )
  if [ -z "$title" ]; then
    return 0
  fi
  local file=$(echo "$files" | grep -m 1 "$title")
  (afplay -v 0.5 -q 1 "$file" &)
}
