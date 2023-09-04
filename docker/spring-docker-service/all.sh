#!/bin/bash

dirPath=`dirname $0`
cd ${dirPath}

echo "====== S1 Shell Script ======"
sh ./s1/make.sh

echo "====== S2 Shell Script ======"
sh ./s2/make.sh

echo "====== DOCKER COMPOSE UP ======"
docker compose up