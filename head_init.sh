#!/bin/bash

# PREPARE HEAD NODE
apt install git -y
curl -o /home/ubuntu/job_init.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/job_init.sh
curl -o /home/ubuntu/job_queue.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/job_queue.sh
curl -o /home/ubuntu/job_exec.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/job_exec.sh
curl -o /home/ubuntu/job_cleanup.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/job_cleanup.sh
chmod +x /home/ubuntu/job_init.sh
chmod +x /home/ubuntu/job_queue.sh
chmod +x /home/ubuntu/job_exec.sh
chmod +x /home/ubuntu/job_cleanup.sh

pip3 install notebook -y
pip3 install ipyparallel -y
