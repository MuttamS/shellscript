#!/bin/bash

USERID=$(ID -U)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelages"
fi

dnf intall mysql -y

if [ $! -ne 0 ]; then
    echo "ERROR:: Intalling mysql is failure"
else
    echo "ERROR:: Intalling mysql is success"
fi