#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOG_FOLDER
echo "Script started executed at: $(date)"  | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR $N:: Please run the script with root previlages"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2... $R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "Installing $2... $G SUCCESS $N" | tee -a $LOG_FILE
    fi
}

for package in $@
do
dnf list installed $package &>>LOG_FILE

if [ $? -ne 0 ]; then
dnf install $package -y &>>LOG_FILE
VALIDATE $? "$package"
else
    echo "$package is already installed....$Y SKIPPED $0"
fi    
done