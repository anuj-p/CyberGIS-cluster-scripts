#!/bin/bash

# PREPARE SLAVE NODE
apt install python3-mpi4py -y

pip3 install ipyparallel
pip3 install pypi-timemachine
sudo setsid nohup pypi-timemachine --port 5001 2022-07-18 > /dev/null 2>&1 & disown

pip3 install --index-url http://127.0.0.1:5001/ numpy
pip3 install --index-url http://127.0.0.1:5001/ fiona
pip3 install --index-url http://127.0.0.1:5001/ shapely
pip3 install --index-url http://127.0.0.1:5001/ rtree
pip3 install --index-url http://127.0.0.1:5001/ pyogrio
pip3 install --index-url http://127.0.0.1:5001/ pyproj
pip3 install --index-url http://127.0.0.1:5001/ networkx
pip3 install --index-url http://127.0.0.1:5001/ matplotlib
pip3 install --index-url http://127.0.0.1:5001/ geopandas
pip3 install --index-url http://127.0.0.1:5001/ osmnx
pip3 install --index-url http://127.0.0.1:5001/ scikit-learn
