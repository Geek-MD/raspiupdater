#!/bin/bash
# Script for update and upgrade raspbian
date
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y

# Update all python packages
pip list -o --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U
