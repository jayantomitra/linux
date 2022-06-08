#!/bin/bash

echo
echo "######################################################"

date

ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then
    echo "Http process is running"
else
    echo "Http process is NOT running"
    echo "Starting the process"
    systemctl start httpd

        if [ $? -eq 0 ]
        then
            echo "Process started successfully"
        else
            echo "Process failed to start, contact admin "
        fi
fi
echo "######################################################"
