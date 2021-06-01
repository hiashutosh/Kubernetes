#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install docker.io -y
sudo usermod -aG root ubuntu
sudo usermod -aG docker ubuntu
sudo reboot