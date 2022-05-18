#!/bin/bash

sudo apt-get install -y libevent-dev python-dev-is-python3 python-setuptools
pip install -r requirements.txt
sudo python -m pip install -e .
nohup ./botnet/boss.py -s localhost -p 6677 -n boss -x auth-boss-now -c "#bots" -v 2 > boss.log &