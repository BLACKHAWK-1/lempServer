#!/bin/bash 

echo "Installing NGINX Server....."
sudo apt install nginx

clear 

echo "NGINX Server Successfully Installed. Checking Server Status...."

systemctl status nginx

ipAddress=$(curl ifconfig.me/ip)
hostName=$(hostname)
clear
echo "To confirm the NGINX Server is up and running, open http://"$ipAddress":80 on your web browser"


mkdir /var/www/projectLEMP
sudo chown -R $USER:$USER /var/www/projectLEMP


cp ./projectLEMP /etc/nginx/sites-available/projectLEMP
echo "Copying projectLEMP configuration file to sites-available is successful....."

sudo ln -s /etc/nginx/sites-available/projectLEMP /etc/nginx/sites-enabled/

sudo nginx -t

sudo unlink /etc/nginx/sites-enabled/default

sudo systemctl reload nginx

sudo echo 'Hello LEMP from hostname' $hostName 'with public IP' $ipAddress > /var/www/projectLEMP/index.html

cp ./info.php /var/www/projectLEMP/info.php
echo "info.php successfully copied...."


echo "On your web browser, visit" $ipAddress"/info.php  to see you relevant information about your PHP Server"