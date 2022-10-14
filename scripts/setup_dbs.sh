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
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add - \
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list \
sudo apt-get update \
sudo apt-get install -y mongodb-org \
systemctl status mongod 

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
