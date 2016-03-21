if status --is-interactive

    set fish_greeting ""
    eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')

    #if test -z (echo $TMUX)
    #    if not test (~/git/tmx 0)
    #        tmux new-session
    #    end
    #end
end
