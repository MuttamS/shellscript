#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root previalges"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then 
    echo "ERROR:: Installing mysql is failure"
else
    echo "Installing mysql is seccuss"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then 
    echo "ERROR:: Installing nginx is failure"
else
    echo "Installing nginx is seccuss"
fi

dnf install mongodb-mongosh -y

if [ $? -ne 0 ]; then 
    echo "ERROR:: Installing mongodb-mongosh is failure"
else
    echo "Installing mongodb-mongosh is seccuss"
fi

