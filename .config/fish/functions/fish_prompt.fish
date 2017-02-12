function fish_prompt
  set_color blue
  echo -n (basename (prompt_pwd))' '
  set_color green
  echo -n (git branch ^/dev/null | grep '*' | tr -d '* ')' '
  set_color yellow
  echo -n '❯ '
  set_color normal
end
