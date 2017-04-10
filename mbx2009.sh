#!/bin/sh
export PATH="/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/X11R6/bin:/root/bin"
while true 
do
        num=`ps -ef |grep mbx |grep -v grep|wc -l`
        echo "$num"
        if [ $num -gt 2 ]
        then
                echo "works fine"
        else
                echo "It's dowl"
                /etc/init.d/mbx2009d restart
        fi
        sleep 2
done
