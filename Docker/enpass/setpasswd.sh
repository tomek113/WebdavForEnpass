#!/bin/bash
read -p "Username please: " username
echo -n $username":" >> .passwords.list
openssl passwd -apr1 >> .passwords.list
