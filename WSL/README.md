## Init Install
mkdir docker-init-image   
cd docker-init-image    

wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/00-init-install.sh   
chmod +x 00-init-install.sh   
./00-init-install.sh    

### apt-fast
wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/01-install-apt-fast.sh
### fish
https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/02-install-fish.sh


chmox +x *.sh
