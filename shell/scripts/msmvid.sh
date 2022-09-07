#!/bin/sh

 st -e sh -c 'cd ~/htw/msm/videos && ls -l && exec zsh' &
 st -e sh -c 'cd ~/htw/msm/msm-latex && nvim -c VimtexCompile main.tex && exec zsh' &
 st -e sh -c 'cd ~/htw/msm/msm-latex && zathura main.pdf' &
st -e sh -c "cd ~/htw/msm/msm-latex/images && ls &&printf '\nxclip -selection c -o > p_n.png\n' && exec zsh" &
exit

