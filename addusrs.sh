#!/bin/bash
# This is a comment
for i in {1..$1}
do
useradd -c "uchenik$i" -d /home/uchenik$i -m -p "" -s /bin/bash uchenik$i
echo uchenik$i:uchenik | chpasswd
done
