#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEAo3OeidQvp3rG8b+P4TzPai1oyD4hAhHv+vsaSl5CIquXA7dghrp10IQCQoPGYt7CMBZf+tHrW70iAcdiZeV+uaOJyP33AituK3JeTl4/B9JFAdlGvAvAvQ5SySDSfhXkKzsqk40M2bH/V8S0iJjQwDKIoxenHVm63DbFGvlZo30=' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service ssh restart
