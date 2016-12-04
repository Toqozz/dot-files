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

export EDITOR="nvim"

#SET fish_color_autosuggestion:777777
#SET fish_color_command:b8bb26
#SET fish_color_comment:928374
#SET fish_color_cwd:green
#SET fish_color_cwd_root:red
#SET fish_color_end:d3869b
#SET fish_color_error:fabd2f
#SET fish_color_escape:928374
#SET fish_color_history_current:cyan
#SET fish_color_host:\x2do\x1ecyan
#SET fish_color_match:cyan
#SET fish_color_normal:normal
#SET fish_color_operator:cyan
#SET fish_color_param:83a598
#SET fish_color_quote:98971a
#SET fish_color_redirection:d3869b
#SET fish_color_search_match:\x2d\x2dbackground\x3dpurple
#SET fish_color_selection:\x2d\x2dbackground\x3dpurple
#SET fish_color_status:red
#SET fish_color_user:\x2do\x1egreen
#SET fish_color_valid_path:\x2d\x2dunderline
