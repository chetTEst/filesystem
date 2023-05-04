#!/bin/bash
script_dir=$(dirname "$0")
apt update
apt install wget acl
wget https://raw.githubusercontent.com/chetTEst/filesystem/master/makeManyFile.py
wget https://raw.githubusercontent.com/chetTEst/filesystem/master/limited_shell
mv $script_dir/limited_shell /usr/local/bin/limited_shell
chmod +x /usr/local/bin/limited_shell

for ((i=1;i<8;i++))
  do
    useradd -c "uchenik$i" -d /home/filesystemTask/uchenik$i -m -p "" -s /usr/local/bin/limited_shell uchenik$i
    echo uchenik$i:F1-KMGKyHN2GQ32smA1C | chpasswd
    mkdir /home/filesystemTask/uchenik$i/hochu5
    mkdir -p /home/filesystemTask/uchenik$i/bin
    python3 $script_dir/makeManyFile.py $i /home/filesystemTask/uchenik$i/hochu5
    setfacl -m u:uchenik$i:rx /
    echo "PATH=:/home/filesystemTask/uchenik$i/bin" > /home/filesystemTask/uchenik$i/.bashrc
    echo "alias help='echo Доступ к командам ограничен'" >> /home/filesystemTask/uchenik$i/.bashrc       # alias на команду help
    echo "bind 'set disable-completion on'" >> /home/filesystemTask/uchenik$i/.bashrc          # Отключает автодополнение на tab
    chmod 750 /home/filesystemTask/uchenik$i/bin
    chown -R root.uchenik$i /home/filesystemTask/uchenik$i/
    chown -R uchenik$i:uchenik$i /home/filesystemTask/uchenik$i
    chmod 640 /home/filesystemTask/uchenik$i/.bash*
    chmod -R a-w /home/filesystemTask/uchenik$i
    ln -s /bin/ls /home/filesystemTask/uchenik$i/bin/ls
    ln -s /bin/cat /home/filesystemTask/uchenik$i/bin/cat
    ln -s /bin/wc /home/filesystemTask/uchenik$i/bin/wc
    ln -s /bin/pwd /home/filesystemTask/uchenik$i/bin/pwd
    ln -s /bin/nano /home/filesystemTask/uchenik$i/bin/nano
    echo 'export PATH' >> /home/filesystemTask/uchenik$i/.bashrc
  done
