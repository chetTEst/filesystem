#!/bin/bash
# This is a comment
for ((i=1;i<8;i++))
do
useradd -c "uchenik$i" -d /home/filesystemTask/uchenik$i -m -p "" -s /bin/rbash uchenik$i
echo uchenik$i:F1-KMGKyHN2GQ32smA1C | chpasswd
mkdir /home/filesystemTask/uchenik$i/hochu5
python3 /root/makeManyFile.py $i /home/filesystemTask/uchenik$i/hochu5
chmod -R a-w /home/filesystemTask/uchenik$i
chown -R uchenik$i:uchenik$i /home/filesystemTask/uchenik$i
ln -s /bin/ls /home/filesystemTask/uchenik$i/ls
ln -s /bin/cat /home/filesystemTask/uchenik$i/cat
ln -s /bin/wc /home/filesystemTask/uchenik$i/wc
ln -s /bin/pwd /home/filesystemTask/uchenik$i/pwd
ln -s /bin/cp /home/filesystemTask/uchenik$i/cp
ln -s /bin/nano /home/filesystemTask/uchenik$i/nano
echo 'PATH=$HOME/' >> /home/filesystemTask/uchenik$i/.bashrc
echo 'export PATH' >> /home/filesystemTask/uchenik$i/.bashrc
done
