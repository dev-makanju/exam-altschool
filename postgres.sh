#!/bin/bash
apt update -y
apt install postgresql -y

sudo -i -u postgres bash << EOF

psql
CREATE USER femi WITH PASSWORD 'femi';
CREATE DATABASE altschool WITH OWNER femi;
EOF