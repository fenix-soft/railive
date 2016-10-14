# railive
bash shell scripting to watch on *nix/linux  system the italian rai tv 

##  To depend:

gnu wget

gnu grep

gnu seed

dos2unix

mpv media player (mpv we must compiled or instaled whit support for HLS stream)

## Usage:
1) "chmod +x script.sh"  set up the execute permission for every script

open your terminal and run a  specific script for watch specific tv channel

### exmple:
whatch rai1: run script RAI1.sh or ./RAI1.sh if the script no integrate on the system o in .bashrc

from custom prove, change the terminal work directory, on the script live and run as ./RAI1.sh

for integrate  in the system edit your .bashrc file and add a path for  custom  railive directory script

### exmple edit .bashrc  file integration 

export PATH=$PATH:"path railive directory script"


now bash look the script, good whatch!

## close a channell or script

for close the program, close  the mpv window, and the script terminate and cleaning temp file, if the script  terminate for error or another cause, or the mpv window dont match, you can use the temp file to debug a problem.
