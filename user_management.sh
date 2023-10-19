#!/bin/bash

#User Management on the Master node
echo "Granting altschool user root privileges on the Master node.."                                
sudo  useradd -m altschool
 sudo  usermod -aG sudo altschool

