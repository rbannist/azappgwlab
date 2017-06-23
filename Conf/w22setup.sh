sudo apt-get -y update
sudo apt-get -y install apache2
sudo apt-get -y install libapache2-mod-php
sudo mv /etc/apache2/mods-enabled/dir.conf /etc/apache2/mods-enabled/dir.old
sudo wget https://raw.githubusercontent.com/rbannist/azappgwlab/master/Conf/dir.conf -P /etc/apache2/mods-enabled
sudo chmod 0777 /etc/apache2/mods-enabled/dir.conf
sudo mv /var/www/html/index.html /var/www/html/index.htmlold
sudo wget https://raw.githubusercontent.com/rbannist/azappgwlab/master/Conf/w22/index.php -P /var/www/html
sudo chmod 777 /var/www/html/index.php
sudo mkdir /var/www/html/path1
sudo wget https://raw.githubusercontent.com/rbannist/azappgwlab/master/Conf/w22/path1/index.php -P /var/www/html/path1
sudo chmod 777 /var/www/html/path1/index.php
sudo mkdir /var/www/html/path2
sudo wget https://raw.githubusercontent.com/rbannist/azappgwlab/master/Conf/w22/path2/index.php -P /var/www/html/path2
sudo chmod 777 /var/www/html/path2/index.php
sudo ufw allow in "Apache Full"
sudo ufw allow in ssh
sudo mkdir /var/www/<**fqdnreplacehere**>
sudo mkdir /var/www/<**fqdnreplacehere**>/public
sudo mkdir /var/www/<**fqdnreplacehere**>/private
sudo mkdir /var/www/<**fqdnreplacehere**>/log
sudo mkdir /var/www/<**fqdnreplacehere**>/cgi-bin
sudo mkdir /var/www/<**fqdnreplacehere**>/backup
sudo wget https://raw.githubusercontent.com/rbannist/azappgwlab/master/Conf/<**fqdnreplacehere**>/index.php -P /var/www/<**fqdnreplacehere**>/public
sudo chmod 777 /var/www/<**fqdnreplacehere**>/public/index.php
sudo mv /etc/apache2/ports.conf /etc/apache2/ports.confold
sudo wget https://raw.githubusercontent.com/rbannist/azappgwlab/master/Conf/<**fqdnreplacehere**>/ports.conf -P /etc/apache2
sudo wget https://raw.githubusercontent.com/rbannist/azappgwlab/master/Conf/<**fqdnreplacehere**>/<**fqdnreplacehere**>.conf -P /etc/apache2/sites-available
sudo chown -R $USER:$USER /var/www/<**fqdnreplacehere**>/public
sudo chmod -R 755 /var/www
sudo a2ensite <**fqdnreplacehere**>
sudo /etc/init.d/apache2 restart
