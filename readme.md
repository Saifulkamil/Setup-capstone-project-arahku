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



APP_NAME=Arahku
APP_HOST='0.0.0.0'
APP_KEY='ef22a0b40a58967cabedeb14e106e2c6'
APP_DEBUG=True
APP_URL='http://localhost'
JWT_KEY='259651e231137bb9a49e5da97a8a19dc'

DB_HOST=localhost
DB_PORT=3306
DB_NAME=capstone
DB_USER=root
DB_PASS=123
SECURITY_PASSWORD_SALT='2226668d5b3f4ed6ffc4af2214859de0'

MAIL_SERVER=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=test.zulfahmi@gmail.com
MAIL_PASSWORD="mmhnuoedxicyamyo"
MAIL_USE_TLS=False
MAIL_USE_SSL=True

BUCKET_NAME=capstone


