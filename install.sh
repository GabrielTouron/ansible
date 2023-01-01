curl -L -O https://github.com/GabrielTouron/ansible/archive/refs/heads/main.zip
unzip main.zip
sudo apt-get update
sudo apt-get install ansible
cd ansible-main
ansible-playbook playbook.yml -u gabriel --ask-become-pass  
ansible-playbook bitwarden.yml 
