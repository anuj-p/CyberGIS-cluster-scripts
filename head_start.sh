#!/bin/bash

# START HEAD NODE
n=`sudo -Hiu ubuntu sinfo -o '%C' | sed '2q;d' | sed 's:.*/::'`
sudo -Hiu ubuntu setsid nohup ipcluster start --n=$n --profile=slurm > /home/ubuntu/test 2>&1 & disown | at now
