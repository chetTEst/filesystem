#!/bin/bash
# This is a comment
for ((i=1;i<16;i++))
do
chown -R uchenik$i /var/www/html/ucheniki/uchenik$i
chmod -R 755 /var/www/html/ucheniki/uchenik$i
done
