function fzf_config
  echo \
  '--reverse' \
  '--color=hl:3,bg+:238,hl+:3' \
  '--color=info:2,prompt:4,pointer:5,marker:5' | \
  read -gx FZF_DEFAULT_OPTS
end
