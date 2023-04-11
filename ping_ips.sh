#!/bin/bash
. /etc/init.d/functions
for var in {1..254};
do
ip=192.168.20.$var
ping -c2 $ip >/dev/null 2>&1
if [ $? = 0 ];then
echo "ping ok:" + "$ip"
else
echo "ping failed:" + "$ip"
fi
done