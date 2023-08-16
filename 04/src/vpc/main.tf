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

locals {
  zone = [for item in var.subnets: item.zone]
  v4_cidr_blocks = [for item in var.subnets: item.cidr]
}

#создаем подсеть
resource "yandex_vpc_subnet" "subnet_vpc" {
#  for_each = {"ru-central1-a" = "10.0.1.0/24", "ru-central1-b" = "10.0.2.0/24", "ru-central1-c" = "10.0.3.0/24"}
#  name           = "${each.key}"
#  zone           = "${each.key}"
##  zone           = var.subnets[0].zone
#  network_id     = yandex_vpc_network.vpc.id
##  v4_cidr_blocks = [var.subnets[0].cidr]
#  v4_cidr_blocks = ["${each.value}"]
  for_each = {for subnet in var.subnets: "${subnet.zone}.${subnet.cidr}" => subnet}
  name     = each.value.zone
  zone     = each.value.zone
  network_id     = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [each.value.cidr]
}