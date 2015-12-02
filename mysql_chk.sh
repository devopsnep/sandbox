#!/bin/bash
/bin/netstat -ant | grep 3306 &> /dev/null;
mysqlstat=`echo $?`
admins="abc@xyz.com"
count=0
threshold=2
sname="mysql"

if [ $mysqlstat != 0 ];
    then
        while [ $count -le $threshold ]
            do
                service $sname start &> /dev/null;
                if [  $? != 0 ];
                then
                    count=$((count+1))
                else
                    exit 0
                fi
         done
         echo "fail";
         echo "Problem starting $sname" | mail -s "Service Start FAILURE!!" $admins &> /dev/null
     else
         :
fi
