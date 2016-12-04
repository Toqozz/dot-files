function fish_user_key_bindings
	fish_vi_mode
    bind -M insert \t accept-autosuggestion
    bind -M insert \cl complete-and-search
    bind \t accept-autosuggestion
    bind \cl complete-and-search
end
