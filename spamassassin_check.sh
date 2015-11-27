#Dragonsnet- spamassassin check
#!/bin/bash
pgrep spamassassin &> /dev/null;
status=`echo $?`
admins="norbuurgen@gmail.com"
count=0
threshold=2
sname="spamassassin"

if [ $status != 0 ];
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




