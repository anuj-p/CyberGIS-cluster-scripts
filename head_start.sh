#!/bin/bash

# START HEAD NODE
sudo -Hiu ubuntu setsid nohup ipcluster start --n=$(sinfo -o '%C' | sed '2q;d' | sed 's:.*/::') --profile=slurm > /dev/null 2>&1 & disown
