#!/usr/bin/env bash

set -x
trap read debug

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list

sudo apt-get update 
ACCEPT_EULA=y DEBIAN_FRONTEND=noninteractive \
apt-get install -y --no-install-recommends mssql-tools unixodbc-dev



