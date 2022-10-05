#!/bin/bash
# This is a comment
for ((i=1;i<40;i++))
do
chown -R student$i /var/www/html/students/student$i
chmod -R 755 /var/www/html/students/student$i
done
