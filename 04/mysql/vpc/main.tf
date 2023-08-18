resource "yandex_mdb_mysql_cluster" "vpc_mysql_cluster" {
  name        = var.mysql_cluster_name
  environment = var.mysql_environment
  network_id  = yandex_vpc_network.cluster_net.id
  version     = var.mysql_version

  resources {
    resource_preset_id = var.resource_preset_id
    disk_type_id       = var.disk_type_id
    disk_size          = var.disk_size
  }

  maintenance_window {
    type = var.maintenance_window_type
    day  = var.maintenance_window_day
    hour = var.maintenance_window_hour
  }

  dynamic "host" {
    for_each = var.HA == true ? toset([0, 1, 2]) : toset([0])
    content{
      zone      = var.default_zone
      subnet_id = yandex_vpc_subnet.cluster_subnet.id
    } 
  }
}

resource "yandex_vpc_network" "cluster_net" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "cluster_subnet" {
  zone           = var.default_zone
  network_id     = "${yandex_vpc_network.cluster_net.id}"
  v4_cidr_blocks = var.default_cidr
}
