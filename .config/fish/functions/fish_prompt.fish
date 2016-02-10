function fish_prompt
   set_color magenta
   printf '[%s] ————— ' (prompt_pwd)
   set_color normal

   # Line 2
   if test $VIRTUAL_ENV
       printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
   end
   set_color normal
end
