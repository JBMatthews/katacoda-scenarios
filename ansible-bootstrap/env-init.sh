#General
apt install update

# Git 
# Install
apt-get install -y git 
# Clone
git clone https://github.com/JBMatthews/ansible-lab-setup.git
# Copy payload to 'ansible' node
# cp ./ansible-lab-setup 

# Shared Volumes
mkdir shared_volume  
docker pull williamyeh/ansible:ubuntu14.04-onbuild  
docker pull ubuntu:14.04  
docker network create mynetwork  
cd shared_volume 

cp ../ansible-lab-setup .


# Launch Containers
docker run --rm williamyeh/ansible:ubuntu14.04-onbuild echo hello!  
docker run --rm ubuntu:14.04 echo hello!  
# Ansible
docker run -d --name ansible --rm --network mynetwork -v $(pwd):/shared_volume williamyeh/ansible:ubuntu14.04-onbuild /bin/bash -c 'while true; do sleep 60; echo keepalive; done'  
#Target
docker run -d --name target --rm --network mynetwork -v $(pwd):/shared_volume ubuntu:14.04 /bin/bash -c 'apt-get update; apt-get install -y openssh-server;service ssh start; while true; do sleep 60; echo keepalive; done'  
  