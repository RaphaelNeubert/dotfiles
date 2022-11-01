#!/bin/sh

 st -e sh -c 'sxiv /home/raphael/work/lego/LegoMindstormInversesPendel/distance.png' &
 st -e sh -c 'sxiv /home/raphael/work/lego/LegoMindstormInversesPendel/speed.png' &
 st -e sh -c 'sxiv /home/raphael/work/lego/LegoMindstormInversesPendel/motor_control.png' &
 st -e sh -c 'sxiv /home/raphael/work/lego/LegoMindstormInversesPendel/pendulum_angle.png' &
 st -e sh -c 'zathura /home/raphael/work/lego/Riedel__Stabilisierung_eines_zweirädrigen_inversen_Pendels_mit_LEGO_Mindstorms_NXT_REPORT.pdf' &
 st -e sh -c 'cd /home/raphael/work/lego/LegoMindstormInversesPendel && exec zsh' &
 #st -e sh -c 'cd ~/htw/msm/msm-latex && nvim -c VimtexCompile main.tex && exec zsh' &
exit

