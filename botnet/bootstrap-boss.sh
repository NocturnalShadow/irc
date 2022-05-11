#!/bin/bash

IPV4=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)

sudo apt-get install -y libevent-dev python-dev-is-python3 python-setuptools
pip install -r requirements.txt
python -m pip install -e .
python ./botnet/boss.py -s $IPV4 -p 6677 -n boss -x auth-boss-now -c "#bots" -v 2