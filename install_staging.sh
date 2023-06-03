#!/bin/bash

if [ -d "capstone_api" ]; then
    echo "Direktori capstone sudah ada. Melakukan git pull origin main................................."
    cd capstone
    git pull origin main
    sudo flask db upgrade
else
    echo "tidak ada directoru capstone_api ........................."
    
    echo "Menjalankan startup script................................"
    echo "Mengupdate paket..........................................."
    sudo apt update

    echo "Menginstal Git....................................."
    sudo apt install git -y

    echo "Menginstal Nano.............................................."
    sudo apt install nano -y

    echo "Menginstal Python3 dan pip..............................................."    
    sudo apt install python3-pip -y

    echo "Menginstal Python3-venv...................................................."
    sudo apt install python3-venv -y

    echo "Menginstal libmysqlclient-dev................................................"
    sudo apt install libmysqlclient-dev -y

    echo "Mengkloning repositori capstone_api............................"
    sudo git clone -b staging https://github.com/zulfahmidev/capstone_api.git /home/cloudbuild/capstone_api && cd /home/cloudbuild/capstone_api

    echo "Mengunduh credentials.json dari Google Cloud Storage..........................."
    sudo gsutil cp gs://private-capstone/dev/credentials.json /home/cloudbuild/capstone_api

    echo "Mengunduh .env dari Google Cloud Storage............................."
    sudo gsutil cp gs://private-capstone/dev/.env /home/cloudbuild/capstone_api

    echo "Membuat virtual environment Python......................................"
    sudo python3 -m venv venv
    . venv/bin/activate

    echo "Menginstal dependensi dari requirements.txt..."
    sudo pip3 install -r requirements.txt

    echo "Menjalankan app.py..."
    echo "Menjalankan python3 app.py..."
    sudo flask db upgrade
    sudo python3 app.py
fi

