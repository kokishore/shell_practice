#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
 echo " error : Please run this script with root access"
 exit 1
else
 echo " You are running this script with root accees"
fi

VALIDATE(){
      if [ $? -eq  0 ]
      then
       echo "$1 installation is Success"
      else
       echo "$1 installation is Faiure"
      fi
}

dnf list installed mysql

if [ $? -ne 0 ]
then 
 echo " MYSQL is not installed .... Going to install it."
      dnf install mysql -y
      VALIDATE $? "mysql"
else
 echo " MYSQL is  installed .... Nothing to do"
fi


dnf list installed nginx

if [ $? -ne 0 ]
then 
 echo " NGINX is not installed .... Going to install it."
      dnf install nginx -y
      VALIDATE $? "nginx"
else
 echo " NGINX  isinstalled .... Nothing to do"
fi


dnf list installed python3

if [ $? -ne 0 ]
then 
 echo "Python3  is not installed .... Going to install it."
      dnf install python3 -y
      VALIDATE $? "python3"
else
 echo " Python3 installed .... Nothing to do"
fi