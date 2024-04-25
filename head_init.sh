#!/bin/bash

# PREPARE HEAD NODE
apt install subversion -y
sudo -Hiu ubuntu git clone https://github.com/anuj-p/CyberGIS-cluster-scripts.git /home/ubuntu/.ipython

sudo -Hiu ubuntu curl -o /home/ubuntu/default.ipynb https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/default.ipynb
sudo -Hiu ubuntu curl -o /home/ubuntu/start.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/head_start.sh
chmod +x /home/ubuntu/start.sh

apt install python3-mpi4py -y

pip3 install markupsafe==2.0.1 --force-reinstall
pip3 install notebook
pip3 install ipyparallel

pip3 install numpy
pip3 install fiona
pip3 install shapely
pip3 install rtree
pip3 install pyogrio
pip3 install pyproj
pip3 install networkx
pip3 install matplotlib
pip3 install geopandas
pip3 install osmnx
pip3 install scikit-learn
pip3 install imageio
pip3 install ipywidgets

TOKEN=`curl -s -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
PUBLIC_DNS=`curl -s http://169.254.169.254/latest/meta-data/public-hostname -H "X-aws-ec2-metadata-token: $TOKEN"`
sudo -Hiu ubuntu setsid nohup python3 -m notebook --no-browser --port=8888 --ip=$PUBLIC_DNS --NotebookApp.token='' --NotebookApp.password='' --allow-root > /dev/null 2>&1 & disown
