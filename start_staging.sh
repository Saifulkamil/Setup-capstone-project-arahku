#!/bin/bash

sudo su - cloudbuild <<EOF
if [ -d "capstone_api" ]; then
    echo "direckori capstone_api ada ................................"
    cd capstone_api
    git pull origin main
    sudo flask db upgrade
else
    echo "direckori capstone_api belum ada ................................"
    echo "mendownlaod scripts install ................................"
    gsutil cp gs://private-capstone/scripts-startup/install_staging.sh .
    sudo chmod +x install_staging.sh
    ./install_staging.sh
fi
EOF
