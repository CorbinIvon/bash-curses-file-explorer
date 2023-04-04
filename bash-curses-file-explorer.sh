#!/bin/bash

## Check Dependencies ===========================================================
  # Make sure you have ncurses installed
  # Are these the correct dependencies? Uninstall to test.
  dependencies=("libncurses-dev" "libncurses6")
  # Why does -qq not work?
  installed_dependencies="$(apt list --installed -qq 2>/dev/null)"
  # Loop over the dependencies
  incorrect_dependencies=()
  for dependency in "${dependencies[@]}"; do
    # Check if the dependency is installed
    if [[ ! $installed_dependencies =~ $dependency ]]; then
      # If the dependency is not installed, add it to the incorrect_dependencies array
      incorrect_dependencies+=("$dependency")
    fi
  done
  if [[ ${#incorrect_dependencies[@]} -gt 0 ]]; then
    # Make the error output as red
    tput setaf 7
    echo "$(tput setaf 1)Error$(tput setaf 9): One or more dependencies are not installed." >&2
    echo "$(tput sgr0)Please install the dependencies:" >&2
    echo "sudo apt install ${incorrect_dependencies[@]}" 1>&2
    exit 1
  fi
## END Check Dependencies =======================================================

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
