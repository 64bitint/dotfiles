if status is-interactive
    # Commands to run in interactive sessions can go here
    export MICRO_TRUECOLOR=1
    if type -q oh-my-posh
        oh-my-posh init fish --config ~/.poshthemes/mytheme.omp.json | \
        sed 's/test "\$(\(.*\))" != \'\'/test -z (echo (\1))/' | sed 's/$(/(/' | \
        source
    end
    abbr -a ll "ls -alF"
    if not type -q sudo; and type -q doas
        abbr -a sudo doas
    end
    if type -q kubectl
        kubectl completion fish | source
    end
    if test -e ~/.shellfishrc
        source ~/.config/fish/shellfish.fish
    end
end
