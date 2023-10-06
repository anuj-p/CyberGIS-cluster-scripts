#!/bin/bash

# PREPARE SLAVE NODE
apt install python3-mpi4py -y

pip3 install ipyparallel

pip3 install numpy
pip3 install pandas
pip3 install fiona
pip3 install pyproj
pip3 install shapely
pip3 install rtree
pip3 install geopandas
pip3 install access
