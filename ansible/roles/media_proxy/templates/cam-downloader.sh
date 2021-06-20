#! /bin/sh

wget http://10.10.10.3/image/OBCam1?q=100 -O /var/www/html/crw-1-new.jpg
wget http://10.10.10.3/image/OBCam2?q=100 -O /var/www/html/crw-2-new.jpg
wget http://10.10.10.3/image/OBCam3?q=100 -O /var/www/html/crw-3-new.jpg
wget http://10.10.10.3/image/ScoPTZ?q=100 -O /var/www/html/sco-1-new.jpg
wget http://10.10.10.3/image/Hil?q=100 -O /var/www/html/hil-1-new.jpg
wget http://10.10.10.3/image/mno1?q=100 -O /var/www/html/mno-1-new.jpg
wget http://10.10.10.3/image/AZO?q=100 -O /var/www/html/azo-1-new.jpg
mv /var/www/html/crw-1-new.jpg /var/www/html/crw-1.jpg
mv /var/www/html/crw-2-new.jpg /var/www/html/crw-2.jpg
mv /var/www/html/crw-3-new.jpg /var/www/html/crw-3.jpg
mv /var/www/html/sco-1-new.jpg /var/www/html/sco-1.jpg
mv /var/www/html/hil-1-new.jpg /var/www/html/hil-1.jpg
mv /var/www/html/mno-1-new.jpg /var/www/html/mno-1.jpg
mv /var/www/html/azo-1-new.jpg /var/www/html/azo-1.jpg
