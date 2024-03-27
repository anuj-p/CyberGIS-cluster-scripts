#!/bin/bash

# PREPARE SLAVE NODE
apt install python3-mpi4py -y
apt install python3-osmnx -y

pip3 install ipyparallel

pip3 install numpy
pip3 install networkx
pip3 install shapely
