# Блок авторизации
provider "yandex" {
 cloud_id  = "b1ged3kgp0r8onfcutj3"
 folder_id = "b1g7ues9v3h46m4d03pr"
 zone      = "ru-central1-a"
}

# Блок ВМ имя и где размещать
resource "yandex_compute_instance" "vm1" {
  name     = "host1"
  hostname = "host1.netology.cloud"
  zone     = "ru-central1-a"

  # Какие ресурсы выдать
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "fd8buhfb9f2q3qkgirbi"
      name        = "root-vm1"
      type        = "network-nvme"
      size        = "50"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.net.id
    nat       = true
  }


}

resource "yandex_vpc_network" "net" {
  name = "net"
}

resource "yandex_vpc_subnet" "net" {
  name           = "net"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = ["10.10.4.0/24"]
}