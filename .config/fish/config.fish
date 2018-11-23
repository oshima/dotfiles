set -x SHELL (which fish)

set ruby_bin /usr/local/opt/ruby/bin
set gem_bin /usr/local/lib/ruby/gems/2.5.0/bin
set -x PATH $ruby_bin $gem_bin $PATH

fish_theme
fzf_config
