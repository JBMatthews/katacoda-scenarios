#General
apt install update
apt-get install -y git 
mkdir shared_volume  
docker pull williamyeh/ansible:ubuntu14.04-onbuild  
docker pull ubuntu:14.04  
docker network create mynetwork  
cd shared_volume 
<<<<<<< HEAD
docker run --rm williamyeh/ansible:ubuntu14.04-onbuild echo hello!  
docker run --rm ubuntu:14.04 echo hello!  
=======

cp ../ansible-lab-setup ./shared_volume


# Launch Containers
docker run --rm williamyeh/ansible:ubuntu14.04-onbuild echo hello
docker run --rm ubuntu:14.04 echo hello
# Ansible
>>>>>>> 136e8f45836e66e11b22a9e8c56c2eee8a27310f
docker run -d --name ansible --rm --network mynetwork -v $(pwd):/shared_volume williamyeh/ansible:ubuntu14.04-onbuild /bin/bash -c 'while true; do sleep 60; echo keepalive; done'  
docker run -d --name target --rm --network mynetwork -v $(pwd):/shared_volume ubuntu:14.04 /bin/bash -c 'apt-get update; apt-get install -y openssh-server;service ssh start; while true; do sleep 60; echo keepalive; done'  
  
