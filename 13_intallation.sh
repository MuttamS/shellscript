#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelages"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Intalling mysql is failure"
else
    echo "ERROR:: Intalling mysql is success"
fi