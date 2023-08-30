#!/usr/bin/env bash

REPOSITORY=/home/ubuntu/tomcat9/webapps
cd $REPOSITORY

APP_NAME=cicdapp
WAR_NAME=$(ls $REPOSITORY/build/libs/ | grep '.war' | tail -n 1)
WAR_PATH=$REPOSITORY/build/libs/$WAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)

if [ -z $CURRENT_PID ]
then
  echo "> 종료할것 없음."
else
  echo "> kill -9 $CURRENT_PID"
  kill -15 $CURRENT_PID
  sleep 5
fi

echo "> WAR 배포"
# war 파일을 원하는 경로에 복사하는 등의 작업을 수행할 수 있습니다.

echo "> 톰캣 실행"
cd /home/ubuntu/tomcat9/bin
./startup.sh
