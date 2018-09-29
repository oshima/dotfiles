set -x SHELL (which fish)
set -x PATH ~/.cargo/bin $PATH

fish_theme
fzf_config
rbenv init - --no-rehash | source
