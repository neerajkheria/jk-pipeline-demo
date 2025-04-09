#!/bin/bash

cd /home/ubuntu/flask-jenkins-demo || exit
git pull origin main

pip3 install -r requirements.txt

pkill -f app.py
nohup python3 app.py > app.log 2>&1 &
