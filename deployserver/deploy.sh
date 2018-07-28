#! /bin/sh

kill -9 $(pgrep webserver)
cd /usr/local/src/devops/DevOpsDemo
git pull
cd ./webserver
#rm -rf DevOpsDemo
#git clone https://github.com/jiangqianghua/DevOpsDemo.git
#cd ./DevOpsDemo/webserver
./webserver &