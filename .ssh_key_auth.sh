#!/bin/bash
echo "enabling ssh key based authentication"
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa
ssh-copy-id altschool@192.168.56.30