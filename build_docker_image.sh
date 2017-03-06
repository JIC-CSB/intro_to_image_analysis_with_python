#!/bin/bash

mkdir -p docker/data
wget https://ndownloader.figshare.com/files/5398223 -O docker/data/Hypocotyl.czi
cp -r notebooks docker/
docker build -t dtp2017 docker/
