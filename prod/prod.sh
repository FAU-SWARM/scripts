#!/bin/bash

current_dir=$(pwd)

cd /opt/repos/swarm
sudo cp -va website/dist/swarm-website/. /var/www/html/
python api/main.py &
python iot/test/device.py -s 60 --project linux-vm --device $(hostname) --cache /var/log/iot/vm &

cd $current_dir