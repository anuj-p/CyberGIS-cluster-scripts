#!/bin/bash

dns_name=$(curl -s http://169.254.169.254/latest/meta-data/public-hostname)
setsid nohup python3 -m notebook --no-browser --port=8888 --ip=${dns_name} --NotebookApp.token='' --NotebookApp.password='' --allow-root > /dev/null 2>&1 & disown
