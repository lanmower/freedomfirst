#!/bin/bash
apt update
wget https://github.com/eosio/eos/releases/download/v1.6.2/eosio_1.6.2-1-ubuntu-18.04_amd64.deb
apt install ./eosio_1.5.2-1-ubuntu-18.04_amd64.deb -y
cp ./logrotate.d/ff /etc/logrotate.d/ff

./firstrun.sh