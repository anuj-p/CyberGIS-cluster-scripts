#!/bin/bash

# START HEAD NODE
n=$(sudo -Hiu ubuntu sinfo -o '%C' | sed '2q;d' | sed 's:.*/::')
cd /home/ubuntu
echo "$n" > file.txt
# sudo -Hiu ubuntu setsid nohup ipcluster start --n=$n --profile=slurm > /dev/null 2>&1 & disown
