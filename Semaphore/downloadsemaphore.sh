# Ausführen mit sh ./downloadsemaphore.sh
VER=$(curl -s https://api.github.com/repos/ansible-semaphore/semaphore/releases/latest|grep tag_name | cut -d '"' -f 4|sed 's/v//g');
wget -q https://github.com/ansible-semaphore/semaphore/releases/download/v${VER}/semaphore_${VER}_linux_amd64.deb;
sudo dpkg -i semaphore_${VER}_linux_amd64.deb
