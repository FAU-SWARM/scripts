#!/bin/bash

current_dir=$(pwd)

cd /opt/repos/swarm
sudo cp -a website/dist/swarm-website/. /var/www/html/
sudo nohup python api/main.py

cd $current_dir