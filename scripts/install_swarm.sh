#!/bin/bash

sudo docker swarm init --advertise-addr 192.168.56.10
sudo echo '#!/bin/bash' > /opt/scripts/join_swarm.sh
sudo echo 'sudo sudo -' >> /opt/scripts/join_swarm.sh
sudo docker swarm join-token manager |grep docker >> /opt/scripts/join_swarm.sh
