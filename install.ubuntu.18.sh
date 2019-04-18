#!/bin/bash
apt update
apt install ./ff.deb -y
cp ./logrotate.d/ff /etc/logrotate.d/ff

./firstrun.sh
