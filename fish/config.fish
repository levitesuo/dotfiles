if status is-interactive
    set fish_greeting 
    set -gx XDG_CONFIG_HOME $XDG_CONFIG_HOME $HOME/.config
    set -gx CWD ~
    set -gx PATH $PATH /home/leevisuo/.npm-global/bin
end

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
starship init fish | source
