set -x SHELL (which fish)
set -x PATH ~/.local/bin ~/.orbstack/bin ~/Library/Python/3.9/bin $PATH
set -x EDITOR "emacsclient -nw -a ''"

source /opt/homebrew/opt/asdf/libexec/asdf.fish

fish_config theme choose tomorrow-night-bright
