#!/usr/bin/fish

if [ "$LC_TERMINAL" = "ShellFish" ]
  
  function sharesheet
    ~/.config/fish/shellfish.sh sharesheet $argv
  end

  function quicklook
    ~/.config/fish/shellfish.sh quicklook $argv
  end

  function textastic
    ~/.config/fish/shellfish.sh textastic $argv
  end

  function openUrl
    ~/.config/fish/shellfish.sh openUrl $argv
  end

  function runShortcut
    ~/.config/fish/shellfish.sh runShortcut $argv
  end

  function notify
    ~/.config/fish/shellfish.sh notify $argv
  end

  function pbcopy
    ~/.config/fish/shellfish.sh pbcopy $argv
  end

  function pbpaste
    ~/.config/fish/shellfish.sh pbpaste $argv
  end
end
