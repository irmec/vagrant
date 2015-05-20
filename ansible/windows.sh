#!/usr/bin/env bash

# Update Repositories
#yum update -y

# Determine Ubuntu Version
#. /etc/lsb-release

# Decide on package to install for `add-apt-repository` command
#
# USE_COMMON=1 when using a distribution over 12.04
# USE_COMMON=0 when using a distribution at 12.04 or older
#USE_COMMON=$(echo "$DISTRIB_RELEASE > 12.04" | bc)

#if [ "$USE_COMMON" -eq "1" ];
#then
#    sudo apt-get install -y software-properties-common
#else
#    sudo apt-get install -y python-software-properties
#fi

# Add Ansible Repository & Install Ansible
#sudo add-apt-repository -y ppa:ansible/ansible
#sudo apt-get update

echo "Updating PATH variable..."
export PATH=/root/.composer/vendor/bin:$PATH
echo "Done updating PATH variable...."

yum install -y ansible

# Setup Ansible for Local Use and Run
cp /vagrant/ansible/inventories/dev /etc/ansible/hosts -f
cp /vagrant/ansible/inventories/.bash_profile /root/.bash_profile -f
chmod 666 /etc/ansible/hosts
cat /vagrant/ansible/files/authorized_keys >> /home/vagrant/.ssh/authorized_keys
ansible-playbook /vagrant/ansible/playbook.yml -e hostname=$1 --connection=local
