#!/bin/bash

# START HEAD NODE
sudo -Hiu ubuntu setsid nohup ipcluster start --n=4 --profile=slurm > /dev/null 2>&1 & disown
