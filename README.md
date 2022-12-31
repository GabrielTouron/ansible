# ANSIBLE

## Requirements
- Need a ssh connection enabled to remote as `ssh gabriel@<ip-remote>` 
- Need a Ubuntu (LTS) distro with a gabriel user in a sudo group in remote (see the exemple below) 

Exemple
```bash
adduser gabriel
```
```bash
usermod -aG sudo gabriel;
rsync --archive --chown=gabriel:gabriel ~/.ssh /home/gabriel
```

## Run ansible playbook
Make sure to remember the pswd from the add user command and edit the inventory with a valid IP address

**This command for remote :** `ansible-playbook -i inventory playbook.yml -u gabriel --skip-tags desktop --ask-become-pass`

**This command for desktop:** `ansible-playbook playbook.yml -u gabriel --ask-become-pass` (Make sure to add localhost and not all in playbook.yml)





