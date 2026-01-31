#!/bin/bash

echo "All variables passed to the script:$@ "

echo " No of variables passed to the script: $# "

echo " The name of the current running script: $0 "

echo " The current working directory is : $PWD "

echo " The current user who is running the script is : $USER "

echo " The PID of the current Script $$ "

sleep 15 &

echo " The PID of the script which is running in Background : $!"

echo " The exit status of the last command : $? "