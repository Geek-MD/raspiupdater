#!/bin/bash
# Script for update and upgrade raspbian
echo ''
echo '----------------------------------------------------'
echo ''
date
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y
# Update all python packages
cd /home/emontes/scripts/raspiupdater
DIR=$(pwd)
pip freeze > $DIR/requirements.txt
cat $DIR/requirements.txt | xargs -n 1 pip install -U
