#!/bin/bash

# PREPARE SLAVE NODE
apt install python3-mpi4py -y

pip3 install ipyparallel

pip3 install numpy==1.21
pip3 install networkx
pip3 install shapely
pip3 install matplotlib
pip3 install geopandas
pip3 install osmnx
pip3 install scikit-learn
