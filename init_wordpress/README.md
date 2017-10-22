CentOS 7.2

## ansibleの公式サイト
www.ansible.com

## Wordpress公式サイト
/Users/masakatsuiida/workspace/ForMaintainer/init_wordpress
Download
https://ja.wordpress.org/latest-ja.tar.gz

-----|-----------------
OS   | CentOS6.8
host | "192.168.43.51"
wp   | "192.168.43.52"

## 入れておくと便利
$ sudo yum install git tree vim -y

## vagrant起動
```
$ cd vagrants/wordpress
$ vim Vagrantfile（Boxのバージョン番号の記述に注意する）
$ vagrant up
$ vagrant global-status
c159efe  host    virtualbox running  /Users/Yourname/vagrants/wordpress 
2072b01  wp      virtualbox running  /Users/Yourname/vagrants/wordpress 
```

## ansible hostのセットアップ
```
$ vagrant ssh host
[vagrant@host]$ wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
[vagrant@host]$ sudo rpm -Uvh epel-release-6-8.noarch.rpm
[vagrant@host]$ sudo yum -y install ansible
[vagrant@host]$ ansible --version
```

### SSH設定
```
$ vim .ssh/config
--
Host wp
 HostName 192.168.43.52
--
$ chmod 600 .ssh/config
$ ssh-keygen -t rsa
$ ssh-copy-id wp
Are you sure you want to continue connecting (yes/no)? yes
vagrant@192.168.43.52's password:vagrant
```

### ansibleのテスト
```
$ cat hosts
[wp]
192.168.43.52
```
```
$ cat ansible.cfg 
[defaults]
hostfile = ./hosts
```
```
$ ansible wp -m ping
192.168.43.52 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
```

### 最初のプレイブックを実行、playbook.yml
```
---
- hosts: all
  sudo: yes
  tasks:
    - name: add a new user
      user: name=miida
```

### ansibleのテスト
```
$ ansible-playbook playbook.yml --syntax-check
$ ansible-playbook playbook.yml --list-task
$ ansible-playbook playbook.yml --check
```

## 資材
Vagrantfile
ansible.cfg
hosts
phpinfo.php
playbook.yml

