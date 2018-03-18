apt-get -y update
apt install -y git
cd /home/scrapbook/tutorial
git clone https://github.com/JBMatthews/ansible-lab-setup
mkdir shared_volume  
docker pull williamyeh/ansible:ubuntu14.04-onbuild  
docker pull ubuntu:14.04  
docker network create mynetwork  
cd shared_volume
docker run --rm williamyeh/ansible:ubuntu14.04-onbuild echo hallo  
docker run --rm ubuntu:14.04 echo hallo  
docker run -d --name ansible --rm --network mynetwork -v $(pwd):/shared_volume williamyeh/ansible:ubuntu14.04-onbuild /bin/bash -c 'while true; do sleep 60; echo keepalive; done'  
docker run -d --name target --rm --network mynetwork -v $(pwd):/shared_volume ubuntu:14.04 /bin/bash -c 'apt-get update; apt-get install -y openssh-server;service ssh start; while true; do sleep 60; echo keepalive; done'  

# Usage:  
# docker cp [OPTIONS] CONTAINER:SRC_PATH DEST_PATH|-
# docker cp [OPTIONS] SRC_PATH|- CONTAINER:DEST_PATH [flags]
docker cp /home/scrapbook/tutorial/ansible-lab-setup|- ansible:/home