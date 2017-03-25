# install-and-configure-RDP
install and configure RDP for linux
<br />
wget https://raw.githubusercontent.com/ASeleem/install-and-configure-RDP/master/rdp.sh && sh rdp.sh
<br />
<h3> OR </h3>
<br />
curl -o rdp.sh -L https://raw.githubusercontent.com/ASeleem/install-and-configure-RDP/master/rdp.sh && sh rdp.sh
<br />
<h3> OR </h3>
<br />
<h2>Follow the instruction below : </h2>

# Upgrade OS
apt-get update -y && apt-get upgrade  -y
<br />
apt-get dist-upgrade -y
<br />
apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

# choose xfce4-session 
update-alternatives --config x-session-manager

# start services
service xrdp start
<br />
service xrdp-sesman start

# configure services to auto-start on boot
update-rc.d xrdp enable
<br />
systemctl enable xrdp-sesman.service

