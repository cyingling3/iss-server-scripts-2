# upgrade system
apt update && apt upgrade -y

# install nginx & jq & curl
apt install nginx jq curl -y

# create scripts directory
rm -r /scripts
mkdir /scripts

# configure nginx
rm /var/www/html/*
wget -O /scripts # upgrade system
apt update && apt upgrade -y

# install nginx & jq & curl
apt install nginx jq curl -y

# create scripts directory
rm -r /scripts
mkdir /scripts

# configure nginx
rm -r /var/www/html/*

# create script file & index page
wget -O /scripts/update-iss-stats.sh https://raw.githubusercontent.com/gsantella/iss-server-scripts/main/update-iss-stats.sh

# create crontab
echo "* * * * * sh /scripts/script.sh" >> /var/tmp/cronconfig
crontab /var/tmp/cronconfig
rm /var/tmp/cronconfig
