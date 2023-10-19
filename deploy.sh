#!/bin/bash

# Function to configure LAMP stack 
  function configure_lamp {
               # Install Apache
                 apt-get update
                 apt-get install -y apache2

              # Install MySQL and secure installation
              apt-get install -y mysql-server

               #Install PHP
                apt-get install -y php libapache2-mod-php php-mysql
                cd /var/www/html
                echo "creating php test file"
                cat <<EOF >> test.php
                <?php
                phpinfo();
                ?>"
EOF
                # You can access the test.php on both nodes by using:
                #Master Node: http://master-node-ip/test.php
                #Slave Node: http://slave-node-ip/test.php

               # Enable Apache mod_rewrite
                a2enmod rewrite

               # Restart Apache
               systemctl restart apache2
     }


# LAMP Stack Deployment on both nodes
 configure_lamp
