
www.ansible.com 

-----------|-------------
macOS      | macOS sierra 10.12.6
Vagrant    | 1.9.7
VirtualBox | 5.1.26 r117224 (Qt5.6.2)
-----------|-------------
ansible    | 2.3.2.0
Python     | 2.7.5
host       | "192.168.43.51"
wp         | "192.168.43.52"

```
$ vagrant init
$ Vagrantfileの編集
$ vagrant up
$ vagrant global-status
id       name    provider   state    directory                                      
------------------------------------------------------------------------------------
77f38ad  host    virtualbox running  /Users/masakatsuiida/vagrant_workspace/centos7 
9fc83da  wp      virtualbox running  /Users/masakatsuiida/vagrant_workspace/centos7 
```

```
$ vagrant ssh host
$ wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
$ sudo rpm -Uvh epel-release-6-8.noarch.rpm
$ sudo yum -y install ansible
$ ansible --version
```

```
$ vagrant ssh host
$ vi .ssh/config
----- 編集開始
Host web
 HostName 192.168.43.52
Host db
 HostName 192.168.43.53
----- 編集終了
$ chmod 600 .ssh/config
$ ssh-keygen -t rsa
$ ssh-copy-id wp
$ ssh wp
```


vi hosts
----- 編集開始
[web]
192.168.43.52

[db]
192.168.43.53
----- 編集終了
ansible all -i hosts -m ping
vi ansible.cfg
----- 編集開始
[defaults]
hostfile = ./hosts
----- 編集終了
ansible all -m ping


playbook.yml 
---
- hosts: all
  sudo: yes
  tasks:
    - name: add a new user
      user: name=taguchi


ansible-playbook playbook.yml --syntax-check
ansible-playbook playbook.yml --list-task
ansible-playbook playbook.yml --check


index.html
<html>
hello from ansible!
</html>


phpinfo.php
<?php

echo "hello from PHP!";
