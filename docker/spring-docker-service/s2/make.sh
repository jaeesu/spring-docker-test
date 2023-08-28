#!/bin/bash

echo "====== S2 Make Script ======"

dirPath=`dirname $0`
cd ${dirPath}

[ -d src ] && rm -rf src

cp -r /Users/seojaehui/Documents/file/IdeaProjects/spring-docker-test .
mv spring-docker-test src

docker build -t s2 --platform linux/amd64 --build-arg application_name="spring-docker-test-s2" --build-arg project_path=${dirPath} .

#shell은 실행하는 곳 기준으로 경로가 잡힌다