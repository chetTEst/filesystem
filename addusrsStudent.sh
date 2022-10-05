#!/bin/bash
# This is a comment
for ((i=1;i<40;i++))
do
useradd -c "student$i" -d /home/student$i -m -p "" -s /bin/bash student$i
echo student$i:student | chpasswd
done
