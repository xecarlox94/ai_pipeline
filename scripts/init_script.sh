#!/bin/bash

sudo apt update &&\
sudo apt upgrade -yq &&\
sudo apt install -yq \
    tmux \
    vim \
    python3-pip


sudo pip install -q \
    mlflow[extras] \
    boto3 \
    psycopg2-binary


echo "\
mlflow server \
--port 8080 \
--host 0.0.0.0 \
--backend-store postgresql://$DB_USERNAME:$DB_PASSWORD@$DB_ENDPOINT:$DB_PORT/$DB
" > run_mlflow.sh \
    &&\
        sudo chmod +x run_mlflow.sh
