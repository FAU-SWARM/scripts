#!/bin/bash

current_dir=$(pwd)

cd /opt/repos/swarm
sudo cp -va website/dist/swarm-website/. /var/www/html/
sudo nohup python api/main.py &

cd $current_dir