#!/bin/bash
kill $(pgrep mysql)
apt-get update
sudo apt-get remove --purge mysql-\*
apt-get autoremove
apt-get autoclean
apt-get install aptitude
aptitude remove mysql-client 
aptitude remove mysql-server
aptitude remove mysql-common
rm -rf /etc/mysql
rm -кf /var/lib/mysql
deluser --remove-home mysqlrm -rf /var/log/mysql
delgroup mysql
find / -iname ‘mysql*’ -exec rm -rf {} \;
sudo apt-get install mysql-server mysql-client
