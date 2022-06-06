#!/bin/bash
 
echo "install packages"

echo "Installing packages"

sudo yum install wget unzip httpd -y > /dev/null

echo "###############################################"
echo "start enable services"
sudo systemctl start httpd
sudo systemctl enable httpd


echo
echo "##############################################"
echo "Making temp directories"

mkdir -p /tmp/webfiles

cd /tmp/webfiles 

wget https://www.tooplate.com/zip-templates/2128_tween_agency.zip

unzip 2128_tween_agency.zip

sudo cp -r 2128_tween_agency/* /var/www/html/

echo "##############################################"

echo "restart start services"
systemctl restart httpd

echo
echo "remove temp files"

rm -rf /tmp/webfiles




