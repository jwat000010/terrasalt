#!/usr/bin/env bash
curl -L https://bootstrap.saltstack.com | sudo sh
mkdir -p /etc/salt/minion.d/
cat << EOF | sudo tee /etc/salt/minion.d/min.conf
# Terraform's installsaltminion.sh added config start
mine_interval: 1
master: $1
id: $2
grains:
  platformgrain: $3
# Terraform's installsaltminion.sh added config end
EOF
service salt-minion restart
