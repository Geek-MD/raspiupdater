#!/bin/bash
# Script for update and upgrade raspbian
date
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoclean
sudo apt-get autoremove
