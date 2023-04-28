#######################
### Set up Postgres ###
####################### 
sudo apt update \
sudo apt install postgresql postgresql-contrib \
sudo systemctl start postgresql.service \
sudo -u postgres createuser --interactive # create a user ( with same name as the linux user )

# adding a database of the name of the user
sudo -u postgres psql
create database <username>; # in the psql prompt
\q # exit psql prompt

# setup a psql password
sudo -u <username> psql
ALTER USER <username> WITH PASSWORD 'new_password'; # in the psql prompt



################################
### Set up Mongodb Community ###
################################

# @deprecated for Ubuntu 22.04 LTS
# This script works for Mongodb Community version 5 on Ubuntu 20.04 LTS 
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add - \
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list \
sudo apt-get update \
sudo apt-get install -y mongodb-org \
systemctl status mongod 

# Ubuntu 22.04 LTS version implements libssl3 and also apt-key is deprecated. This could lead to potential issues in future
# So use this for Ubuntu 22.04 LTS
sudo apt update
sudo apt install wget curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo apt update
sudo apt install mongodb-org
sudo systemctl enable mongod
sudo systemctl start mongod

# Install Mongodb Compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.33.1_amd64.deb
sudo dpkg -i mongodb-compass_1.33.1_amd64.deb
mongodb-compass # this runs the mongodb-compass 


####################
### Set up Redis ###
####################
sudo apt update
sudo apt install redis-server
sudo gedit /etc/redis/redis.conf
supervised systemd # probabbly on line 147 (earlier it would be supervised no, change no to systemd)
sudo systemctl restart redis.service
sudo systemctl status redis
redis-cli ping # to test the installation

#######################
### Set up InfluxDb ###
#######################
# more at https://portal.influxdata.com/downloads/
wget -q https://repos.influxdata.com/influxdata-archive_compat.key
echo '393e8779c89ac8d958f81f942f9ad7fb82a25e133faddaf92e15b16e6ac9ce4c influxdata-archive_compat.key' | sha256sum -c && cat influxdata-archive_compat.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/influxdata-archive_compat.gpg > /dev/null
echo 'deb [signed-by=/etc/apt/trusted.gpg.d/influxdata-archive_compat.gpg] https://repos.influxdata.com/debian stable main' | sudo tee /etc/apt/sources.list.d/influxdata.list

sudo apt-get update && sudo apt-get install influxdb2

