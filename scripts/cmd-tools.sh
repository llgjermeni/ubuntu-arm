#!/usr/bin/env bash

set -x
trap read debug

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list

sudo apt-get update 

sudo apt-get -y install mssql-tools unixodbc-dev


