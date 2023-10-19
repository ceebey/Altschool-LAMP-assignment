#!/bin/bash
#copy data from Master to 
echo "Copying /mnt/altschool to the Slave node..."
  scp -r /mnt/altschool altschool@192.168.56.30:/mnt/altschool/slave
 echo "Copy complete."