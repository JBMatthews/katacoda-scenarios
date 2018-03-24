# apt-get -y update
# apt-get install software-properties-common
# apt-add-repository ppa:ansible/ansible
apt -y update
# apt-get install ansible
apt install -y git
cd /home/scrapbook/tutorial
mkdir shared_volume
docker pull virtuant/ansible-node:v2
docker pull ubuntu:14.04
docker network create mynetwork
cd shared_volume
docker run --rm virtuant/ansible-node:v2 echo hello-world
docker run --rm ubuntu:14.04 echo hello-world
docker run -d --name ansible --rm --network mynetwork -v $(pwd):/shared_volume virtuant/ansible-node:v2 bash -c 'while true; do sleep 60; echo keepalive; done'
docker run -d --name target -p 8080 --rm --network mynetwork -v $(pwd):/shared_volume ubuntu:14.04 bash -c 'apt-get update; apt-get install -y openssh-server;service ssh start; while true; do sleep 60; echo keepalive; done'
