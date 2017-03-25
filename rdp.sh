#!/bin/bash
echo "#######################################
# Programmed By : Abd El-Rahman Sleem #
# website : aseleem.com , 4IPB.COM    #
#######################################"
echo "Hello, We Will install and Congigure XRDP Together , Let\'s Go ! "

# Upgrade OS
sudo apt-get update -y && apt-get upgrade  -y
sudo apt-get dist-upgrade -y
sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

# choose xfce4-session 
echo "choose xfce4-session (ok)"
read ok
sudo update-alternatives --config x-session-manager

# start services
sudo service xrdp start
sudo service xrdp-sesman start

# configure services to auto-start on boot
sudo update-rc.d xrdp enable
sudo systemctl enable xrdp-sesman.service



echo It\'s nice to meet you , XRDP is Configured \! 

