set -x SHELL (which fish)
set -x PATH ~/.local/bin ~/.orbstack/bin ~/Library/Python/3.9/bin $PATH
set -x EDITOR "emacsclient -nw -a ''"

fish_add_path --prepend ~/.asdf/shims

fish_config theme choose tomorrow-night-bright
