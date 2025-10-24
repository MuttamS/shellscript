#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_FLODER/$SCRIPT_NAME.log"

mkdir -p $LOG_FLODER
echo "Script started executed at: $(date)"

if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR $N:: Please run the script with root previlages"
    exit 1



VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2... $G SUCCESS $N"
    fi
}
dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y mkdir -p $LOG_FLODER
    VALIDATE $? "mysql"
else
    echo -e "Mysql already exist.. $Y SKIPPED $N"
fi

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "nginx"
else
    echo -e "nginx already exist.. $Y SKIPPED $N"
fi

dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOG_FILE
    VALIDATE $? "python3"
else
    echo -e "python3 already exist.. $Y SKIPPED $N"
fi