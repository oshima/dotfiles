set -x SHELL (which fish)
set -x PATH ~/.cargo/bin /usr/local/opt/ruby/bin $PATH
set -x GOPATH ~

source /usr/local/opt/asdf/libexec/asdf.fish

fish_theme
fzf_config
