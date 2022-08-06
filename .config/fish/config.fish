if status is-interactive
    # Commands to run in interactive sessions can go here
    export MICRO_TRUECOLOR=1
    if type -q oh-my-posh
        oh-my-posh init fish --config ~/.poshthemes/mytheme.omp.json | source
    end
    abbr -a ll "ls -alF"
    if not type -q sudo; and type -q doas
        abbr -a sudo doas
    end
    source ~/.config/fish/shellfish.fish
end
