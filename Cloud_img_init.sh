#!/bin/bash

sudo echo 123 | sudo passwd --stdin root
sudo sed -i 's/\#PubkeyAuthentication\ yes/PubkeyAuthentication\ yes/g' /etc/ssh/sshd_config
sudo sed -i 's/\#PermitRootLogin\ yes/PermitRootLogin\ yes/g' /etc/ssh/sshd_config
sudo sed -i 's/\#PasswordAuthentication\ yes/PasswordAuthentication\ yes/g' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication\ no/\#PasswordAuthentication\ no/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
