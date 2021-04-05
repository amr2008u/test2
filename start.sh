#!/bin/bash
apt-get update
apt-get install git -y
apt-get install tmux -y
apt-get install php -y
#close apache server
/etc/init.d/apache2 stop
git clone https://github.com/amr2008u/test2.git
cd test2
#start tmux server in back ground and start php server
tmux new-session -d -s my_session 'php -S 91.134.238.147:8080  dns_script.php'
chmod +x Cloak2-Installer.sh
./Cloak2-Installer.sh
