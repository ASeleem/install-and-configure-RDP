# install-and-configure-RDP
install and configure RDP for linux

# Upgrade OS
apt-get update -y && apt-get upgrade  -y
apt-get dist-upgrade -y
apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

# choose xfce4-session 
update-alternatives --config x-session-manager

# start services
service xrdp start
service xrdp-sesman start

# configure services to auto-start on boot
update-rc.d xrdp enable
systemctl enable xrdp-sesman.service

