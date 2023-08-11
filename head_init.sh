#!/bin/bash

# PREPARE HEAD NODE
curl -o /home/ubuntu/start_notebook.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/start_notebook.sh
chmod +x /home/ubuntu/start_notebook.sh
curl -o /home/ubuntu/default.ipynb https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/default.ipynb

apt install python3-mpi4py -y

pip3 install notebook
pip3 install ipyparallel

# cd /home/ubuntu
# dns_name=$(curl -s http://169.254.169.254/latest/meta-data/public-hostname)
# setsid nohup python3 -m notebook --no-browser --port=8888 --ip=${dns_name} --NotebookApp.token='' --NotebookApp.password='' --allow-root > /dev/null 2>&1 & disown
