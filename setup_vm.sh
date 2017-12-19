#!/usr/bin/env bash
sudo apt-get -y update       
sudo apt-get -y upgrade  
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git xauth
git clone https://github.com/fireice-uk/xmr-stak
cd xmr-stak
cmake . -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make
cp ../azure_scripts/config.txt bin
cp ../azure_scripts/$1  bin/cpu.txt

