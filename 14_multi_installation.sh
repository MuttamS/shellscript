#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root previalges"
    exit 1
fi

# dnf install mysql -y

# if [ $? -ne 0 ]; then 
#     echo "ERROR:: Installing mysql is failure"
# else
#     echo "Installing mysql is seccuss"
# fi

# dnf install nginx -y

# if [ $? -ne 0 ]; then 
#     echo "ERROR:: Installing nginx is failure"
# else
#     echo "Installing nginx is seccuss"
# fi

# dnf install python3 -y

# if [ $? -ne 0 ]; then 
#     echo "ERROR:: Installing python3 is failure"
# else
#     echo "Installing python3 is seccuss"
# fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "ERROR:: Installing $2 is failure"
        exit 1
    else
        echo "Installing $2 is Success"
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"
dnf install nginx -y
VALIDATE $? "nginx"
dnf install python3 -y
VALIDATE $? "python3"