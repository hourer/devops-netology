## Задача 1 (Вариант с Yandex.Cloud). Регистрация в ЯО и знакомство с основами (необязательно, но крайне желательно).

1. Подробная инструкция на русском языке содержится [здесь](https://cloud.yandex.ru/docs/solutions/infrastructure-management/terraform-quickstart).
2. Обратите внимание на период бесплатного использования после регистрации аккаунта. 
3. Используйте раздел "Подготовьте облако к работе" для регистрации аккаунта. Далее раздел "Настройте провайдер" для подготовки
базового терраформ конфига.
4. Воспользуйтесь [инструкцией](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs) на сайте терраформа, что бы 
не указывать авторизационный токен в коде, а терраформ провайдер брал его из переменных окружений.

### Ответ

- для того что бы не использовать токен нужно применить нижеуказанную команду
   ```bash
   export YC_TOKEN=`yc iam create-token`
   ```
## Задача 2. Создание aws ec2 или yandex_compute_instance через терраформ. 

1. В каталоге `terraform` вашего основного репозитория, который был создан в начале курсе, создайте файл `main.tf` и `versions.tf`.
2. Зарегистрируйте провайдер 
   1. для [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs). В файл `main.tf` добавьте
   блок `provider`, а в `versions.tf` блок `terraform` с вложенным блоком `required_providers`. Укажите любой выбранный вами регион 
   внутри блока `provider`.
   2. либо для [yandex.cloud](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs). Подробную инструкцию можно найти 
   [здесь](https://cloud.yandex.ru/docs/solutions/infrastructure-management/terraform-quickstart).
3. Внимание! В гит репозиторий нельзя пушить ваши личные ключи доступа к аккаунту. Поэтому в предыдущем задании мы указывали
их в виде переменных окружения. 
4. В файле `main.tf` воспользуйтесь блоком `data "aws_ami` для поиска ami образа последнего Ubuntu.  
5. В файле `main.tf` создайте рессурс 
   1. либо [ec2 instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance).
   Постарайтесь указать как можно больше параметров для его определения. Минимальный набор параметров указан в первом блоке 
   `Example Usage`, но желательно, указать большее количество параметров.
   2. либо [yandex_compute_image](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_image).
6. Также в случае использования aws:
   1. Добавьте data-блоки `aws_caller_identity` и `aws_region`.
   2. В файл `outputs.tf` поместить блоки `output` с данными об используемых в данный момент: 
       * AWS account ID,
       * AWS user ID,
       * AWS регион, который используется в данный момент, 
       * Приватный IP ec2 инстансы,
       * Идентификатор подсети в которой создан инстанс.  
7. Если вы выполнили первый пункт, то добейтесь того, что бы команда `terraform plan` выполнялась без ошибок. 


В качестве результата задания предоставьте:
1. Ответ на вопрос: при помощи какого инструмента (из разобранных на прошлом занятии) можно создать свой образ ami?
2. Ссылку на репозиторий с исходной конфигурацией терраформа.  

### Ответ
1. ДЛя создания своего образа можно использовать packer, ниже пример как использовать стандвртный образ yandex
  ```bash
   {
  "builders": [
    {
      "disk_type": "network-nvme",
      "folder_id": "",
      "image_description": "by packer",
      "image_family": "ubuntu-2004-lts",
      "image_name": "ubuntu-2004",
      "source_image_family": "ubuntu-2004-lts",
      "ssh_username": "ubuntu",
      "subnet_id": "e9bj5t7dslgq2jkjc2tp",
      "token": "",
      "type": "yandex",
      "use_ipv4_nat": true,
      "zone": "ru-central1-a"
    }
  ]
}
   ```

2. - Конфигурация terraform
  - [main.tf](terraform-yc/main.tf)
  - [outputs.tf](terraform-yc/outputs.tf)
  - [versions.tf](terraform-yc/versions.tf)

 ```bash
  Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_instance.vm1 will be created
  + resource "yandex_compute_instance" "vm1" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + hostname                  = "host1.netology.cloud"
      + id                        = (known after apply)
      + name                      = "host1"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v1"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd8buhfb9f2q3qkgirbi"
              + name        = "root-vm1"
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-nvme"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy {
          + host_affinity_rules = (known after apply)
          + placement_group_id  = (known after apply)
        }

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy {
          + preemptible = (known after apply)
        }
    }

  # yandex_vpc_network.net will be created
  + resource "yandex_vpc_network" "net" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "net"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_subnet.net will be created
  + resource "yandex_vpc_subnet" "net" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "net"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.10.4.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + external_ip_address_vm1 = (known after apply)
  + internal_ip_address_vm1 = (known after apply)
yandex_vpc_network.net: Creating...
╷
│ Error: Error while requesting API to create network: server-request-id = 3467d69c-8606-4601-88f2-77f82cfb7c8f server-trace-id = 72c0e410d130808d:9ea586abbf0e2a43:72c0e410d130808d:1 client-request-id = 0abb7249-f4cb-4dfe-9d51-2dc36efbd02f client-trace-id = 6d6cfb7b-9605-404c-9f71-fdcb7d03ec22 rpc error: code = ResourceExhausted desc = Quota limit vpc.networks.count exceeded
│ 
│   with yandex_vpc_network.net,
│   on main.tf line 34, in resource "yandex_vpc_network" "net":
│   34: resource "yandex_vpc_network" "net" {
│ 
╵
aleksandrbratasov@N-00095 terraform-yc % terraform apply -auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_instance.vm1 will be created
  + resource "yandex_compute_instance" "vm1" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + hostname                  = "host1.netology.cloud"
      + id                        = (known after apply)
      + name                      = "host1"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v1"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd8buhfb9f2q3qkgirbi"
              + name        = "root-vm1"
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-nvme"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy {
          + host_affinity_rules = (known after apply)
          + placement_group_id  = (known after apply)
        }

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy {
          + preemptible = (known after apply)
        }
    }

  # yandex_vpc_network.net will be created
  + resource "yandex_vpc_network" "net" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "net"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_subnet.net will be created
  + resource "yandex_vpc_subnet" "net" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "net"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.10.4.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + external_ip_address_vm1 = (known after apply)
  + internal_ip_address_vm1 = (known after apply)
yandex_vpc_network.net: Creating...
yandex_vpc_network.net: Creation complete after 1s [id=enpjpdb656omvgfb3tr1]
yandex_vpc_subnet.net: Creating...
yandex_vpc_subnet.net: Creation complete after 1s [id=e9bfh8cd0c1r0abkor44]
yandex_compute_instance.vm1: Creating...
yandex_compute_instance.vm1: Still creating... [10s elapsed]
yandex_compute_instance.vm1: Still creating... [20s elapsed]
yandex_compute_instance.vm1: Still creating... [30s elapsed]
yandex_compute_instance.vm1: Still creating... [40s elapsed]
yandex_compute_instance.vm1: Creation complete after 44s [id=fhm50c38bst1pdi0doo3]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

external_ip_address_vm1 = "84.201.133.86"
internal_ip_address_vm1 = "10.10.4.4"
  ```
 набор команд
 ```bash
    terraform init
    
    terraform validate
    
    export YC_TOKEN=`yc iam create-token`
    
    terraform plan
    
    terraform# terraform apply -auto-approve
   ```

 