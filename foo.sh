#!/bin/bash
for i in {1..254}
do
   ping -c 3 -i 0.2 -W 1 172.241.1.$i &> /dev/null
   if [ $? -eq 0 ];then
   echo "Host 172.241.1.$i is up"
   else
   echo  "Host 172.241.1.$i is down"
   fi
done

