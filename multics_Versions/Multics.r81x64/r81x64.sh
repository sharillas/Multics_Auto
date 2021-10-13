#####################################################################################
#                             \\\|///                                                                                                              #
#                          \\~~ ~~//                                                                                                           #
#                         (  @ @  )                                                                                   	        	        #
#    +---------oOOO------(_)---------oOOO--------+                                                             		        #
#   |                                                        |          					        #
#   |                                                        |                                                			        #
#   |--------------------------------------------------------|                                               			        #
#   |               Installation source               |                                                                                     #
#   |   ----->    www.newcccam.net      <-----|                                              			        #
#   |   ----->    www.cccamcs.com       <-----|                                              			        #
#   |                         2020                        |                    				                      #
#   |       Automated Installation script        |                                          			        #
#   |               Written by: groupsat	      |                             		                                    #
#   |                www.multics.info                |                           				        #
#   |                  ooO                                |                      				        #                    
#  +-----------------(   )-Ooo--------------------------+                					        #
#                      \ ( (   )                                                                				        #
#                       \_)) / 								        #
#                          (_/                                                                   			        #
#                                                                                                 			        #
#               Purpose: Installing MultiCS r81x64 on a bare Ubuntu and Debian  system.     	        #
#                                                                                            	                 		        #
#####################################################################################"

echo "Installation script for automated MultiCS r81x64 installation"
echo -e "\e[5m Please Wait ...\e[0m"
sleep 3
echo "OK"
cd /var
rm -rf etc/
echo ""
mkdir /var/etc
mkdir /var/etc/bin
mkdir /var/etc/script
	     
multics="https://newcccam.net/install_multics/r81x64/multics.x64"
wget ${multics} -O /var/etc/bin/multics.x64 || echo "Error: Couldn't connect to ${multics}"
chmod 755 /var/etc/bin/multics.x64

multicscfg="https://newcccam.net/install_multics/r81x64/multics.cfg"
wget ${multicscfg} -O /var/etc/multics.cfg || echo "Error: Couldn't connect to ${multicscfg}"

autorun="https://newcccam.net/install_multics/r81x64/autorun.sh"
wget ${autorun} -O /var/etc/script/autorun.sh || echo "Error: Couldn't connect to ${autorun}"
chmod 755 /var/etc/script/autorun.sh

Cache="https://newcccam.net/install_multics/r81x64/Cache.cfg"
wget ${Cache} -O /var/etc/Cache.cfg || echo "Error: Couldn't connect to ${Cache}"

channelinfo="https://newcccam.net/install_multics/CCcam.channelinfo"
wget ${channelinfo} -O /var/etc/CCcam.channelinfo || echo "Error: Couldn't connect to ${channelinfo}"

providers="https://newcccam.net/install_multics/CCcam.providers"
wget ${providers} -O /var/etc/CCcam.providers || echo "Error: Couldn't connect to ${providers}"

CCcamcs_Servers="https://newcccam.net/install_multics/r81x64/CCcamcs_Servers.cfg"
wget ${CCcamcs_Servers} -O /var/etc/CCcamcs_Servers.cfg || echo "Error: Couldn't connect to ${CCcamcs_Servers}"

CCcamcs_Users="https://newcccam.net/install_multics/r81x64/CCcamcs_Users.cfg"
wget ${CCcamcs_Users} -O /var/etc/CCcamcs_Users.cfg || echo "Error: Couldn't connect to ${CCcamcs_Users}"

MGcamd_Users="https://newcccam.net/install_multics/r81x64/MGcamd_Users.cfg"
wget ${MGcamd_Users} -O /var/etc/MGcamd_Users.cfg || echo "Error: Couldn't connect to ${MGcamd_Users}"

MGcamdNew_Servers="https://newcccam.net/install_multics/r81x64/MGcamdNew_Servers.cfg"
wget ${MGcamdNew_Servers} -O /var/etc/MGcamdNew_Servers.cfg || echo "Error: Couldn't connect to ${MGcamdNew_Servers}"

css="https://newcccam.net/install_multics/multics.css"
wget ${css} -O /var/etc/multics.css || echo "Error: Couldn't connect to ${css}"

Newcamd_users="https://newcccam.net/install_multics/r81x64/Newcamd_users.cfg"
wget ${Newcamd_users} -O /var/etc/Newcamd_users.cfg || echo "Error: Couldn't connect to ${Newcamd_users}"

Profailes="https://newcccam.net/install_multics/r81x64/Profailes.cfg"
wget ${Profailes} -O /var/etc/Profailes.cfg || echo "Error: Couldn't connect to ${Profailes}"

IpToCountry="https://newcccam.net/install_multics/IpToCountry.csv"
wget ${IpToCountry} -O /var/etc/IpToCountry.csv || echo "Error: Couldn't connect to ${IpToCountry}"

echo "########################## MultiCS r81x64 ##########################" >> /etc/crontab

echo "*/1 *  * * *  root    /var/etc/script/./autorun.sh >>/var/log/autorun.log" >> /etc/crontab
echo "" >> /etc/crontab

service cron restart

exit 0