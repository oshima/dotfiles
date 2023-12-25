function fish_prompt
  set_color blue
  echo -n (basename (prompt_pwd))' '
  set_color green
  echo -n (git branch --show-current 2> /dev/null)' '
  set_color yellow
  echo -n '❯ '
  set_color normal
end
