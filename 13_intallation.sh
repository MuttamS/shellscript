#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelages"
    exit 1
fi

dnf remove mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: removing mysql is failure"
else
    echo "removed mysql is successfull"
fi