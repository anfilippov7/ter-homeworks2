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
  for_each = {for subnet in var.subnets: "${subnet.zone}.${subnet.cidr}" => subnet}
  name     = each.value.zone
  zone     = each.value.zone
  network_id     = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [each.value.cidr]
}