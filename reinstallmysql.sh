#!/bin/bash
kill $(pgrep mysql)
apt-get clean
apt-get update
dpkg -r mysql-client-5.7
dpkg -r mysql-server-5.7
dpkg -r libmysqlclient20:i386
dpkg -r libmysqlclient20:amd64
dpkg -r libmysqlclient18:amd64
dpkg -r mysql-common
dpkg -r mysql 
apt-get remove --purge mysql-\*
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
sudo apt-get install mysql-common mysql-server* mysql-client*
