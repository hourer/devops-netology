### Домашнее задание к занятию "08.01 Введение в Ansible"

#### Подготовка к выполнению
1. Установите ansible версии 2.10 или выше.
```bash
$ ansible --version
ansible [core 2.13.3]
  config file = None
  configured module search path = ['/home/bratashov/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/bratashov/.local/lib/python3.10/site-packages/ansible
  ansible collection location = /home/bratashov/.ansible/collections:/usr/share/ansible/collections
  executable location = /home/bratashov/.local/bin/ansible
  python version = 3.10.4 (main, Jun 29 2022, 12:14:53) [GCC 11.2.0]
  jinja version = 3.1.2
  libyaml = True
```

2. Создайте свой собственный публичный репозиторий на github с произвольным именем.
```bash
https://github.com/hourer/devops-netology/tree/main/8.1/playbook
```
3. Скачайте [playbook](./playbook/) из репозитория с домашним заданием и перенесите его в свой репозиторий.

#### Основная часть
1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте какое значение имеет факт `some_fact` для указанного хоста при выполнении playbook'a.  
```bash
bratashov@d-00063:~/Документы/devops-netology/8.1/playbook$ ansible-playbook -i inventory/test.yml site.yml

PLAY [Print os facts] *****************************************************************************************

TASK [Gathering Facts] ****************************************************************************************
ok: [localhost]

TASK [Print OS] ***********************************************************************************************
ok: [localhost] => {
    "msg": "Ubuntu"
}

TASK [Print fact] *********************************************************************************************
ok: [localhost] => {
    "msg": "all default fact"
}

PLAY RECAP ****************************************************************************************************
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
```

2. Найдите файл с переменными (group_vars) в котором задаётся найденное в первом пункте значение и поменяйте его на 'all default fact'.

```bash
bratashov@d-00063:~/Документы/devops-netology/8.1/playbook$ cat group_vars/all/examp.yml
---
  some_fact: "all default fact"
```
