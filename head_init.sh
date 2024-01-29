#!/bin/bash

# PREPARE HEAD NODE
apt install subversion -y
sudo -Hiu ubuntu svn export https://github.com/anuj-p/CyberGIS-cluster-scripts/trunk/profile_slurm /home/ubuntu/.ipython/profile_slurm

sudo -Hiu ubuntu curl -o /home/ubuntu/default.ipynb https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/default.ipynb

apt install python3-mpi4py -y

pip3 install markupsafe==2.0.1 --force-reinstall
pip3 install notebook
pip3 install ipyparallel

pip3 install numpy

TOKEN=`curl -s -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
PUBLIC_DNS=`curl -s http://169.254.169.254/latest/meta-data/public-hostname -H "X-aws-ec2-metadata-token: $TOKEN"`
sudo -Hiu ubuntu setsid nohup python3 -m notebook --no-browser --port=8888 --ip=$PUBLIC_DNS --NotebookApp.token='' --NotebookApp.password='' --allow-root > /dev/null 2>&1 & disown
