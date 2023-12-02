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
