#!/bin/sh

docker stop jenkins
docker rm jenkins
docker pull handongjoon/deployment:1.0
docker run -d --name jenkins -p 80:8080 handongjoon/deployment:1.0