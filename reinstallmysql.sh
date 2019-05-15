#!/bin/bash
kill $(pgrep mysql)
apt-get clean
apt-get update
dpkg -r phpmyadmin
dpkg -r *mysql\*
dpkg -r mysql-client-\*
dpkg -r mysql-server-\*
dpkg -r libmysqlclient20:i386
dpkg -r libmysqlclient20:amd64
dpkg -r libmysqlclient18:amd64
dpkg -r mysql-common
dpkg -r mysql 
apt-get remove --purge phpmyadmin
apt-get remove --purge *mysql\*
apt-get autoremove
apt-get autoclean
apt-get install aptitude
aptitude remove mysql-client 
aptitude remove mysql-server
aptitude remove mysql-common
aptitude remove phpmyadmin
rm -rf /etc/mysql*
rm -кf /var/lib/mysql*
deluser --remove-home mysqlrm -rf /var/log/mysql
delgroup mysql
find / -iname ‘mysql*’ -exec rm -rf {} \;
rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld /etc/mysql /var/lib/mysql /var/log/mysql* /var/log/upstart/mysql.log* /var/run/mysqld
sudo find / -name .mysql_history -delete
apt-get install mysql-common mysql-server* mysql-client*
mysql_secure_installation
apt-get install phpmyadmin
phpenmod mcrypt
systemctl restart php7.0-fpm
