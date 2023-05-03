#!/bin/bash
# This is a comment
for ((i=1;i<8;i++))
do
useradd -c "uchenik$i" -d /home/uchenik$i -m -p "" -s /bin/rbash uchenik$i
echo uchenik$i:F1-KMGKyHN2GQ32smA1C | chpasswd
mkdir /home/uchenik$i/hochu5
python3 /root/makeManyFile.py $i /home/uchenik$i/hochu5
chmod -R a-w /home/uchenik$i
chown -R uchenik$i:uchenik$i /home/uchenik$i
ln -s /bin/ls /path/to/limited_user_home/allowed_bin/ls
ln -s /bin/cat /path/to/limited_user_home/allowed_bin/cat
ln -s /bin/cd /path/to/limited_user_home/allowed_bin/cd
ln -s /bin/cd /path/to/limited_user_home/allowed_bin/wc
ln -s /bin/cd /path/to/limited_user_home/allowed_bin/pwd
ln -s /bin/cd /path/to/limited_user_home/allowed_bin/cp
ln -s /bin/cd /path/to/limited_user_home/allowed_bin/cp
ln -s /bin/cd /path/to/limited_user_home/allowed_bin/nano
echo 'PATH=$HOME/allowed_bin' >> /home/uchenik$i/.bashrc

done
