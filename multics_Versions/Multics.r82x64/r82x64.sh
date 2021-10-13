#!/bin/bash
echo "
#########################################################################
#                                                                       #
#   +---------oOOO------(_)---------oOOO--------+                       #
#   |                                           |          		#
#   |                                           |                       #
#   |-------------------------------------------|                       #
#   |        Auto Install CardServerProxy       |                       #
#   |   -----> Multics Version r82x64   <-----  |                       #
#   |                   2021                    |                       #
#   |       Automated Installation script       |                       #
#   |           Written by: sharillas	        |                       #
#   |                                           |                       #
#   |                  ooO                      |                       #                    
#   +-----------------(   )-Ooo-----------------+                	#
#                      \ ( (   )                                        #
#                       \_))  / 					#
#                          (_/                                          #
#                                                                       #
#     MultiCS auto install on server with Ubuntu and Debian system.     #
#                                                                       #
#########################################################################"

echo "Installation script for automated MultiCS r82_x64 installation"
echo -e "\e[5m Please Wait ...\e[0m"
sleep 3
echo "OK"
cd /var
rm -rf etc/
echo ""
mkdir /var/etc
mkdir /var/etc/bin
mkdir /var/etc/script
	     
multics="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/multics.x64"
wget ${multics} -O /var/etc/bin/multics.x64 || echo "Error: Couldn't connect to ${multics}"
chmod 755 /var/etc/bin/multics.x64

multicscfg="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/multics.cfg"
wget ${multicscfg} -O /var/etc/multics.cfg || echo "Error: Couldn't connect to ${multicscfg}"

multics_check_script="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/multics_check_script"
wget ${multics_check_script} -O /var/etc/script/multics_check_script.sh || echo "Error: Couldn't connect to ${multics_check_script}"
chmod 755 /var/etc/script/multics_check_script.sh

multics_Start_Stop_Script="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/multics_Start_Stop_Script"
wget ${multics_Start_Stop_Script} -O /var/etc/script/multics_Start_Stop_Script.sh || echo "Error: Couldn't connect to ${multics_Start_Stop_Script}"
chmod 755 /var/etc/script/multics_Start_Stop_Script.sh

Cache="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/Cache.cfg"
wget ${Cache} -O /var/etc/Cache.cfg || echo "Error: Couldn't connect to ${Cache}"

Camd35_Servers="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/Camd35_Servers.cfg"
wget ${Camd35_Servers} -O /var/etc/Camd35_Servers.cfg || echo "Error: Couldn't connect to ${Camd35_Servers}"

Camd35_Users="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/Camd35_Users.cfg"
wget ${Camd35_Users} -O /var/etc/Camd35_Users.cfg || echo "Error: Couldn't connect to ${Camd35_Users}"

channelinfo="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/CCcam.channelinfo"
wget ${channelinfo} -O /var/etc/CCcam.channelinfo || echo "Error: Couldn't connect to ${channelinfo}"

providers="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/CCcam.providers"
wget ${providers} -O /var/etc/CCcam.providers || echo "Error: Couldn't connect to ${providers}"

CCcamcs_Servers="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/CCcamcs_Servers.cfg"
wget ${CCcamcs_Servers} -O /var/etc/CCcamcs_Servers.cfg || echo "Error: Couldn't connect to ${CCcamcs_Servers}"

CCcamcs_Users="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/CCcamcs_Users.cfg"
wget ${CCcamcs_Users} -O /var/etc/CCcamcs_Users.cfg || echo "Error: Couldn't connect to ${CCcamcs_Users}"

Cs378x_Servers="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/Cs378x_Servers.cfg"
wget ${Cs378x_Servers} -O /var/etc/Cs378x_Servers.cfg || echo "Error: Couldn't connect to ${Cs378x_Servers}"

Cs378x_Users="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/Cs378x_Users.cfg"
wget ${Cs378x_Users} -O /var/etc/Cs378x_Users.cfg || echo "Error: Couldn't connect to ${Cs378x_Users}"

MGcamd_Users="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/MGcamd_Users.cfg"
wget ${MGcamd_Users} -O /var/etc/MGcamd_Users.cfg || echo "Error: Couldn't connect to ${MGcamd_Users}"

MGcamdNew_Servers="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/MGcamdNew_Servers.cfg"
wget ${MGcamdNew_Servers} -O /var/etc/MGcamdNew_Servers.cfg || echo "Error: Couldn't connect to ${MGcamdNew_Servers}"

css="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/multics.css"
wget ${css} -O /var/etc/multics.css || echo "Error: Couldn't connect to ${css}"

Newcamd_users="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/Newcamd_users.cfg"
wget ${Newcamd_users} -O /var/etc/Newcamd_users.cfg || echo "Error: Couldn't connect to ${Newcamd_users}"

Profiles="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/Profiles.cfg"
wget ${Profiles} -O /var/etc/Profiles.cfg || echo "Error: Couldn't connect to ${Profiles}"

IpToCountry="https://github.com/sharillas/Multics_Auto/raw/main/multics_Versions/Multics.r82x64/IpToCountry.csv"
wget ${IpToCountry} -O /var/etc/IpToCountry.csv || echo "Error: Couldn't connect to ${IpToCountry}"

sleep 4
sudo ln -s /var/etc/script/multics_Start_Stop_Script.sh /sbin/multics
sleep 2

echo "########################## MultiCS r82_x64 ##########################" >> /etc/crontab

echo "*/1 *  * * *  root    /var/etc/script/./multics_check_script.sh >>/var/log/multics_check_script.log" >> /etc/crontab
echo "" >> /etc/crontab

sudo multics start

service cron restart
sleep 2
echo " go to your webrowser http://ip_of_your_server:55000 "
echo " User: admin "
echo " password: admin "
sleep 1

exit 0
