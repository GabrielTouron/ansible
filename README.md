# ANSIBLE

## Requirements
- Need a connection ssh enabled to remote as `ssh gabriel@<ip-remote>` 
- Need a Ubuntu distro with a gabriel user in a sudo group in remote 

Exemple
```bash
adduser gabriel;
usermod -aG sudo gabriel;
rsync --archive --chown=gabriel:gabriel ~/.ssh /home/gabriel
```

## Run ansible playbook
Make sure to remember the psw from the add user command
End edit the inventory with a valid IP address

Run `ansible-playbook -i inventory playbook.yml -u gabriel -v --ask-become-pass`






