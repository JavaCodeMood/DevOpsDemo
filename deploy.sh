#! /bin/sh

kill -9 $(pgrep webserver)
cd /usr/local/src/devops/
git pull https://github.com/jiangqianghua/DevOpsDemo.git
cd ./DevOpsDemo/webserver
./webserver &