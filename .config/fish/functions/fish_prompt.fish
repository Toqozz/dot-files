function fish_prompt
	set stat $status
   set_color brwhite
   printf '['
   set_color bryellow
   printf '%s' $stat
   set_color brwhite
   printf ']['
   set_color brblue
   printf '%s' (prompt_pwd)
   set_color brwhite
   printf '] —————  '
   set_color normal

   # Line 2
   if test $VIRTUAL_ENV
       printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
   end
   set_color normal
end
