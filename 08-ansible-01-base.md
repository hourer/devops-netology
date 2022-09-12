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

3. Воспользуйтесь подготовленным (используется docker) или создайте собственное окружение для проведения дальнейших испытаний.

Сделал пересобрал обрвзы по скольку были проблемы

```bash
fatal: [ubuntu]: FAILED! => {"ansible_facts": {}, "changed": false, "failed_modules": {"ansible.legacy.setup": {"ansible_facts": {"discovered_interpreter_python": "/usr/bin/python"}, "failed": true, "module_stderr": "/bin/sh: 1: /usr/bin/python: not found\n", "module_stdout": "", "msg": "The module failed to execute correctly, you probably need to set the interpreter.\nSee stdout/stderr for the exact error", "rc": 127, "warnings": ["No python interpreters found for host ubuntu (tried ['/usr/bin/python', 'python3.9', 'python3.8', 'python3.7', 'python3.6', 'python3.5', 'python2.7', 'python2.6', '/usr/libexec/platform-python', '/usr/bin/python3', 'python'])"]}}, "msg": "The following modules failed to execute: ansible.legacy.setup\n"}
---



4. Проведите запуск playbook на окружении из prod.yml. Зафиксируйте полученные значения some_fact для каждого из managed host.

```bash
PLAY [Print os facts] *********************************************************************************************************

TASK [Gathering Facts] ********************************************************************************************************
ok: [centos7]
ok: [ubuntu]

TASK [Print OS] ***************************************************************************************************************
ok: [centos7] => {
    "msg": "CentOS"
}
ok: [ubuntu] => {
    "msg": "Ubuntu"
}

TASK [Print fact] *************************************************************************************************************
ok: [centos7] => {
    "msg": "el"
}
ok: [ubuntu] => {
    "msg": "deb"
}

PLAY RECAP ********************************************************************************************************************
centos7                    : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ubuntu                     : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
```

5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились следующие значения: для deb - `'deb default fact'`, для el - `'el default fact'`.

```bash
bratashov@alex-NBLK:~/Документы/devops-netology/8.1/playbook$ cat group_vars/deb/examp.yml
---
  some_fact: "deb default fact"
bratashov@alex-NBLK:~/Документы/devops-netology/8.1/playbook$ cat group_vars/el/examp.yml
---
  some_fact: "el default fact"

```

6. Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.

```bash
bratashov@alex-NBLK:~/Документы/devops-netology/8.1/playbook$ ansible-playbook -i inventory/prod.yml site.yml


PLAY [Print os facts] *********************************************************************************************************

TASK [Gathering Facts] ********************************************************************************************************
ok: [centos7]
ok: [ubuntu]

TASK [Print OS] ***************************************************************************************************************
ok: [centos7] => {
    "msg": "CentOS"
}
ok: [ubuntu] => {
    "msg": "Ubuntu"
}

TASK [Print fact] *************************************************************************************************************
ok: [centos7] => {
    "msg": "el"
}
ok: [ubuntu] => {
    "msg": "deb"
}

PLAY RECAP ********************************************************************************************************************
centos7                    : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ubuntu                     : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
```

7. При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology
```bash
bratashov@alex-NBLK:~/Документы/devops-netology/8.1/playbook$ ansible-vault encrypt group_vars/deb/examp.yml
New Vault password:
Confirm New Vault password:
Encryption successful
bratashov@alex-NBLK:~/Документы/devops-netology/8.1/playbook$ ansible-vault encrypt group_vars/el/examp.yml
New Vault password:
Confirm New Vault password:
Encryption successful
```

8. Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь в работоспособности.
```bash
bratashov@alex-NBLK:~/Документы/devops-netology/8.1/playbook$ ansible-playbook -i inventory/prod.yml site.yml

PLAY [Print os facts] ********************************************************************************
ERROR! Attempting to decrypt but no vault secrets found
bratashov@alex-NBLK:~/Документы/devops-netology/8.1/playbook$ ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
Vault password:
```
9. Посмотрите при помощи ansible-doc список плагинов для подключения. Выберите подходящий для работы на control node
```bash
ansible_connection: local
```
10 В prod.yml добавьте новую группу хостов с именем local, в ней разместите localhost с необходимым типом подключения.
```bash
local:
  hosts:
    localhost:
      ansible_connection: local
```
11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь что факты `some_fact` для каждого из хостов определены из верных `group_vars`.
```bash
TASK [Print OS] *************************************************************************************************************
ok: [localhost] => {
    "msg": "Ubuntu"
}
ok: [centos7] => {
    "msg": "CentOS"
}
ok: [ubuntu] => {
    "msg": "Ubuntu"
}

TASK [Print fact] ***********************************************************************************************************
ok: [localhost] => {
    "msg": "local default fact"
}
ok: [centos7] => {
    "msg": "el default fact"
}
ok: [ubuntu] => {
    "msg": "deb default fact"
}

PLAY RECAP *******************************************************************************************************************
centos7                    : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ubuntu                     : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
```
