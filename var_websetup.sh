#!/bin/bash


#VARIABLE DECLARATION

PACKAGE="httpd wget unzip"
SRVC="httpd"
TEMP_DIR="/tmp/webfiles"
SRC_URL="https://www.tooplate.com/zip-templates/2128_tween_agency.zip"
ARTIFACT="2128_tween_agency"

 
echo "install packages"

echo "Installing packages"

sudo yum install $PACKAGE -y > /dev/null

echo "###############################################"
echo "start enable services"
sudo systemctl start $SRVC
sudo systemctl enable $SRVC


echo
echo "##############################################"
echo "Making temp directories"

mkdir -p $TEMP_DIR 

cd $TEMP_DIR 

wget $SRC_URL

unzip $ARTIFACT.zip

sudo cp -r $ARTIFACT/* /var/www/html/

echo "##############################################"

echo "restart start services"
systemctl restart $SRVC

echo
echo "remove temp files"

rm -rf $TEMP_DIR





