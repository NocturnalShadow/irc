#!/bin/bash
apt-get update
apt-get install -y git-core libevent-dev python-dev-is-python3 python-setuptools python3-pip
git clone https://github.com/NocturnalShadow/irc.git ./irc
pip install -r ./irc/requirements.txt
python -m pip install -e ./irc
./irc/botnet/worker.py %(worker_options)s > worker.log 2>&1