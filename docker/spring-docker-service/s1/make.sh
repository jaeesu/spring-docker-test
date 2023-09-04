#!/bin/bash

echo "====== S1 Make Script ======"

dirPath=`dirname $0`
cd ${dirPath}

[ -d src ] && rm -rf src

#dirPath=${dirPath#./}

cp -r /Users/seojaehui/Documents/file/IdeaProjects/spring-docker-test .
rm -rf spring-docker-test/.git
rm -rf spring-docker-test/docker
mv spring-docker-test src

docker build -t s1 --platform linux/amd64 --build-arg application_name="spring-docker-test-s1" --build-arg project_path=${dirPath} .