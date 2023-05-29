# setUp project capstone

sudo apt update

cek versi pyhton, pip, git

sudo python3 --version // ubuntu 22.0 tls sudah ada python 3.10.x
sudo git --version  // ubuntu 22.0 tls sudah ada git 3.10.x
sudo pip3 --version


sudo apt install python3-pip -y
sudo apt-get install python3-venv

git clone

sudo python3 -m venv venv

sudo apt update
sudo apt install libmysqlclient-dev

sudo apt install mariadb-server

sudo mysql_secure_installation // banyak step,  step 1 masukan password, 2. n, 3. n, 4- habis y
sudo mysql -u root -p // masukan password yang sudah di setel

CREATE DATABASE databasename; //sesuai degnan .env

sudo su


. venv/bin/activate
pip3 install -r requirements.txt //pastikan selesai semua tidak ada error

sudo flask db init
sudo flask db migrate
sudo flask db upgrade

sudo python app.py / (python app.py&)


#!/bin/bash

# melakukan setup untuk kebutuhan aplikasi
sudo apt update
sudo apt install git -y
sudo apt install nano -y
sudo apt install python3-pip -y
sudo apt install python3-venv -y
sudo apt install libmysqlclient-dev -y
sudo apt install mariadb-server -y
sudo git clone https://github.com/zulfahmidev/capstone_api.git
cd capstone_api


echo "Membuat file .env..."

# Membuat file .env dengan sudo dan menuliskan data ke dalamnya
sudo sh -c 'cat > .env << EOF
APP_NAME=Arahku
APP_HOST='0.0.0.0'
APP_KEY='d257c0065d3e7fbe33445d2d2a19749a'
APP_DEBUG=True
APP_URL='http://localhost:5000'
JWT_KEY='067524793beda6a06189b6f478e74fa8'

DB_HOST=localhost
DB_PORT=3306
DB_NAME=capstone
DB_USER=root
DB_PASS=123
SECURITY_PASSWORD_SALT='e02ce29597e4ad0a337db7070afee75c'

MAIL_SERVER=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=test.zulfahmi@gmail.com
MAIL_PASSWORD="mmhnuoedxicyamyo"
MAIL_USE_TLS=False
MAIL_USE_SSL=True

BUCKET_NAME='flask-bucket-training'
EOF'

echo "File .env telah berhasil dibuat."




sudo python3 -m venv venv
. venv/bin/activate
sudo pip3 install -r requirements.txt

echo "Menjalankan mysql_secure_installation..."

echo -e "123\nn\nn\ny\nn\ny\ny\n" | sudo mysql_secure_installation

echo "mysql_secure_installation selesai."




sudo nano env.sh
# Membuat file .env dengan sudo dan menuliskan data ke dalamnya
sudo sh -c 'cat > .env << EOF
APP_NAME=Arahku
APP_HOST='0.0.0.0'
APP_KEY='d257c0065d3e7fbe33445d2d2a19749a'
APP_DEBUG=True
APP_URL='http://localhost:5000'
JWT_KEY='067524793beda6a06189b6f478e74fa8'

DB_HOST=localhost
DB_PORT=3306
DB_NAME=capstone
DB_USER=root
DB_PASS=123
SECURITY_PASSWORD_SALT='e02ce29597e4ad0a337db7070afee75c'

MAIL_SERVER=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=test.zulfahmi@gmail.com
MAIL_PASSWORD="mmhnuoedxicyamyo"
MAIL_USE_TLS=False
MAIL_USE_SSL=True

BUCKET_NAME='flask-bucket-training'
EOF'

echo "File .env telah berhasil dibuat."










