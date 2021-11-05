
#!/bin/bash
EDITOR=vim
RED='\033[0;41;30m'
STD='\033[0;0;39m'
echo "\033[0;41;30m
#################################################################
#       |-------------------------------------------|           #
#       |        Auto Install CardServerProxy       |           #
#       |   -----> Multics Version r107x64  <-----  |           #
#       |                   2021                    |           #
#       |       Automated Installation script       |           #
#       |           Written by: sharillas	    |           #
#       |                                           |           #
# MultiCS auto install on server with Ubuntu and Debian system. #
#                                                               #
#################################################################"
sleep 4

pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){
	echo "one() called"
        pause
}
 
two(){
	echo "two() called"
        pause
}
 
show_menus() {
	clear
	echo   ""	
	echo  -e "\e[1;97;44m  M U L T I C S  C A R D S E R V E R P R O X Y  A U T O  I N S T A L L ${STD}"
	echo   ""
	echo -e "1. MultCS r107 x64 \e[33m (original by evileyes) \e[0m"
	echo "2. Exit"
	echo ""
echo  -e "\e[1;97;41mATENCAO!!:                                 ${STD}"
echo  -e "\e[1;97;41mAntes de Proceder a instalacao,            ${STD}"
echo  -e "\e[1;97;41mrecomenda se que salve os seus dados       ${STD}"
	echo ""

}

read_options(){
	local choice
	read -p "Enter choice [ 1 - 12] " choice
	case $choice in
		


		1) install="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/r82x64.sh"
echo ""
wget ${install} -O /tmp/r82x64.sh || echo "Error: Couldn't connect to ${install}"
chmod 755 /tmp/r82x64.sh
/tmp/./r82x64.sh
rm /tmp/r82x64.sh
echo ""
echo "Finished."
echo ""
exit 0
 
                               
                               ;;

		2) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
trap '' SIGINT SIGQUIT SIGTSTP
 

while true
do
 
	show_menus
	read_options
done
