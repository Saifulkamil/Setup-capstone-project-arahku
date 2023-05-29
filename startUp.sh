#!/bin/bash

echo "Menjalankan startup script..........."
echo "Mengupdate paket................."
sudo apt update

echo "Menginstal Git......................."
sudo apt install git -y

echo "Menginstal Nano........................."
sudo apt install nano -y

echo "Menginstal Python3 dan pip........................."
sudo apt install python3-pip -y

echo "Menginstal Python3-venv............................"
sudo apt install python3-venv -y

echo "Menginstal libmysqlclient-dev..............................."
sudo apt install libmysqlclient-dev -y


echo "Mengkloning repositori capstone_api............................"
sudo git clone https://github.com/zulfahmidev/capstone_api.git /home/c065dsx0772/capstone_api && cd /home/c065dsx0772/capstone_api

echo "Mengunduh credentials.json dari Google Cloud Storage..........................."
sudo gsutil cp gs://private-capstone/credentials.json /home/c065dsx0772/capstone_api

echo "Mengunduh .env dari Google Cloud Storage............................."
sudo gsutil cp gs://private-capstone/.env /home/c065dsx0772/capstone_api

echo "Menginstal mariadb-server..................................."
sudo apt install mariadb-server -y

echo "Menjalankan mysql_secure_installation..........................."
echo -e "123\nn\nn\ny\ny\ny\ny\n" | sudo mysql_secure_installation


echo "Menjalankan mysql_secure_installation........................."

echo -e "123\nn\nn\ny\ny\ny\ny\n" | sudo mysql_secure_installation


sudo mysql -u root -p"123" <<EOF
CREATE DATABASE capstone;
EOF


echo "Membuat virtual environment Python......................................"
sudo python3 -m venv venv
. venv/bin/activate

echo "Menginstal dependensi dari requirements.txt..."
sudo pip3 install -r requirements.txt

echo "Menjalankan app.py..."
echo "Menjalankan python3 app.py..."
sudo python3 app.py
