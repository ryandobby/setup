# OS Assumptions
#
# Distributor ID:	Ubuntu
# Description:	Ubuntu 16.04.1 LTS
# Release:	16.04
# Codename:	xenial
#
# Returned by running $lsb_release -a

# PHP
#
# In etc/php.ini make the following changes
#   memory_limit = 128M
#   upload_max_filesize = 100M
#   post_max_size = 128M

sudo usermod -aG sudo ubuntu

# Update apt-get
#sudo apt-get update

# Install Apache2
sudo apt install apache2
sudo apache2ctl configtest
sudo systemctl restart apache2
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"

# Install PHP
sudo apt install php7.0
sudo apt install libapache2-mod-php7.0

# Install Xvfb
sudo apt install xvfb

# Install zip
sudo apt install zip

# Restart Apache2
sudo service apache2 restart
