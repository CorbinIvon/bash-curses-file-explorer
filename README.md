# bash-curses-file-explorer
This project will bring a file explorer to bash. So long are the days of ls-ing every directory to navigate to a file in the terminal!
It relies on basic linux commands. If you do not have the permissions to view a directory 

## Road Map ( v1.0.0 )
1. Browse directory 
- [ ] Prints everything in current directory
  
2. Colorize content
- [ ] Directories are blue
- [ ] Binaries are magenta
- [ ] Executables are green
- [ ] Everything else is white
  
3. Navigate directory
- [ ] Navigate with arrow keys
  - [ ] Left Scopes out
  - [ ] Right scopes in
  - [ ] Up highlights the element above. Loop to bottom if on top
  - [ ] Down highlights the element below. Loop to top if on bottom
    
4. Hotkeys to do tasks
- [ ] Ctrl + C to exit explorer (Kills application)
- [ ] Ctrl + Shift + C to exit to the current directory.
- Bonus
  - S to select files. Selected files are highlighted.
  - F to find file. 
    - Will allow you to type a file to search.
    - Will highlight the paths to results.
  - C to copy selected files. Places copies in file buffer.
  - X to cut selected files. Places cuts in file buffer.
  - P to paste files in file buffer.
    
5. UI
- [ ] Current path on top of terminal.
- [ ] Shows previous directory
- [ ] Shows current directory
- [ ] Shows next directory (of currently selected if applicable)
- [ ] Shows common hotkey hints on bottom of screen.
  
6. --help option
- [ ] Will show documentation for the project.
- [ ] Learn how to make a man entry.
  
7. Security
- [ ] Don't access non-accessible content / files. Check permissions first.

## Post
If this Project turns out successful, I'll make another one for Python.
