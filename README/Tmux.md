### Use zoom to focus on a single process
Ctrl+a, z





























# update Tmux to lastest version (3.0-rc5)    

apt-fast install -y wget tar libevent-dev libncurses-dev    
apt-fast install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip gawk   

VERSION=3.0-rc5   
#wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz    
#tar xf tmux-${VERSION}.tar.gz    
#rm -f tmux-${VERSION}.tar.gz   

wget https://github.com/tmux/tmux/releases/download/3.0/tmux-3.0-rc5.tar.gz   
tar xf tmux-3.0-rc5.tar.gz    
rm -f tmux-3.0-rc5.tar.gz   

cd tmux-3.0-rc5   
./configure   
make    
sudo make install   
cd ~    
sudo rm -rf /usr/local/src/tmux-\*    
sudo mv tmux-3.0-rc5 /usr/local/src   

# Fix 'protocol version mismatch' or dont   
sudo killall -9 tmux    
http://witkowskibartosz.com/blog/update-your-tmux-to-latest-version.html#.XafvnOj7RhE   

## tip Using shell scripting to setup your tmux enviroment
https://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/    

### Some ...
https://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/

## Use Tmuxinator Session Manager  or  Switch between tmux Terminal Sessions
https://www.tecmint.com/tips-for-tmux-terminal-sessions/
