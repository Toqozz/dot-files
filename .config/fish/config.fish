if status --is-interactive

    set fish_greeting ""

    # configure fish git prompt
    set __fish_git_prompt_showdirtystate 'true'
    set __fish_git_prompt_showuntrackedfiles 'true'
    set __fish_git_prompt_color_branch yellow
    set __fish_git_prompt_char_dirtystate '✨ '
    set __fish_git_prompt_char_untrackedfiles '🆕 '

    eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')

end
