#!/bin/bash
# This is a comment
for ((i=1;i<18;i++))
do
useradd -c "uchenik$i" -d /home/uchenik$i -m -p "" -s /bin/bash uchenik$i
echo uchenik$i:uchenik | chpasswd
done
