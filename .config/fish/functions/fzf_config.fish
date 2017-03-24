function fzf_config
  echo \
  '--reverse' \
  '--color=hl:2,bg+:238,hl+:2' \
  '--color=info:5,prompt:4,pointer:1,marker:1' | \
  read -gx FZF_DEFAULT_OPTS
end
