#!/bin/bash

# include the ncurses library
source /usr/share/doc/ncurses-dev/ncurses.sh

# initialize the Curses library
tput init

# clear the screen
clear

# create a window
WINDOW=$(tput lines) # height of window
COLUMNS=$(tput cols) # width of window
XPOS=0 # x position of window
YPOS=0 # y position of window

# create the window with border
tput tput init
# Makes the background black
tput setb 1
# Makes the text white
tput setaf 7
tput clear
tput cup $YPOS $XPOS

# Makes the text a strong white
tput sgr0
# Makes the text highlighted
# tput rev
# Bold the text
# tput bold

echo "$(ls -1)"

# move the cursor to the bottom of the window
tput cup $WINDOW $XPOS

# wait for a keypress
read -p "Press any key to continue..." -n1 -s

# reset the terminal
tput reset
