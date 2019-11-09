

### on master container

apt update
apt install python ansible openssh-client vim iputils-ping -y

ssh-keygen -t rsa -b 4096
ssh-copy-id root@<ip-normal-container>

vim /etc/ansible/hosts
[host]
[ip-normal-container]

#### test
ansible -m ping [ip-normal-container]















### On normal container

apt update && apt install ssh vim python -y
passwd root
"nhap password"

sed 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config > /etc/ssh/sshd_config.changed && mv /etc/ssh/sshd_config.changed /etc/ssh/sshd_config

service ssh enable
service ssh start

