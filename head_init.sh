#!/bin/bash

apt install git -y
curl -o /home/ubuntu/job_init.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/job_init.sh
curl -o /home/ubuntu/job_exec.sh https://raw.githubusercontent.com/anuj-p/CyberGIS-cluster-scripts/main/job_exec.sh
chmod +x /home/ubuntu/job_init.sh
chmod +x /home/ubuntu/job_exec.sh