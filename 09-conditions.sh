#!/bin/bash

NUMBER=$1

# -gt ---> Greater than
# -lt ---> Less than 
# -eq ---> Equal to
# -ne ---> Not Equal to 


if [ $NUMBER -lt 100 ]
then
    echo " The $NUMBER is less than 100 " 
else 
   echo " The $NUMBER is greater than 100 "
fi
