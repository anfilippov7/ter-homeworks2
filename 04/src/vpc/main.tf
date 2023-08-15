terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

#создаем облачную сеть
resource "yandex_vpc_network" "vpc" {
  name = var.vpc_name
}

#создаем подсеть
resource "yandex_vpc_subnet" "subnet_vpc" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.vpc.id
  v4_cidr_blocks = var.default_cidr
}