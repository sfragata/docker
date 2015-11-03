#!/bin/sh
if [ -n $1 ]; then
  BASE_APP="/opt/nodejs"
  APPLICATION_NAME=$1
  APPLICATION_PATH="$BASE_APP/$APPLICATION_NAME"
  PIDFILE="/tmp/$APPLICATION_NAME.pid"
  LOG="/tmp/$APPLICATION_NAME.log"
  MIN_UPTIME="5000"
  SPIN_SLEEP_TIME="2000"

  echo "starting $APPLICATION_PATH ..."
  forever \
  --pidFile $PIDFILE \
  -a \
  -l $LOG \
  --minUptime $MIN_UPTIME \
  --spinSleepTime $SPIN_SLEEP_TIME \
  start $APPLICATION_PATH

  tail -f $LOG
else
  echo "the application name paramameter is required"
fi
