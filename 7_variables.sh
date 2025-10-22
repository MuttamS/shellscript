#!/bin/bash

#DATE=$[date]
#echo "Timestamp is executed: $DATE

START_TIME=$(date +%s)

sleep 10 

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "script exected in : $TOTAL_TIME seconds".