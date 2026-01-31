#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
 echo " error : Please run this script with root access"
 exit 1
else
 echo " You are running this script with root accees"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
 echo " MYSQL is not installed .... Going to install it."
      dnf install mysqf-y

      if [ $? -eq 0 ]
      then
       echo "MySQl installation is SUCCESS"
      else
       echo "Mysql installation is Failure"
      fi
else
 echo " MYSQL is  installed .... Nothing to do"
fi