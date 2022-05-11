#!/bin/bash
apt-get update
apt-get install -y git-core libevent-dev python-dev-is-python3 python-setuptools python3-pip
git clone https://github.com/NocturnalShadow/irc.git ~/irc
cd ~/irc
pip install -r requirements.txt
python -m pip install -e .
python ./botnet/worker.py %(worker_options)s