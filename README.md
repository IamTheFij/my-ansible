My Ansible
==========

Super basic starter [Ansible](http://www.ansible.com/) playbook and WIP Docker file

Running
-------

Simple ping

    ansible all -i inventory/ --private-key ssh/id_rsa_ansible -m ping

Sync ssh keys

    ansible-playbook -i inventory/ --private-key ssh/id_rsa_ansible playbooks/key_sharing.yaml

To Do:
------

 - [ ] Bootstrap dotfiles
 - [ ] Set up [Semaphore](https://github.com/ansible-semaphore/semaphore)
 - [ ] Validate Docker setup works
 - [ ] Alternate Docker base for arm/rpi
