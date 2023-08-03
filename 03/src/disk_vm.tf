resource "yandex_compute_disk" "empty-disk" {
  count      = 3
  name       = "empty-disk-${count.index + 1}"
#  name       = "empty-disk"  
  type       = "network-hdd"
  zone       = "ru-central1-a"
  size       = 1
  block_size = 4096
}


data "yandex_compute_image" "ubuntu3" {
  family = var.vm_web_family
}

resource "yandex_compute_instance" "storage" {
  depends_on = [yandex_compute_disk.empty-disk]  
  name        = "${var.name_vm}-${"storage"}"
  platform_id = var.vm_web_platform_id
  resources {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu3.image_id
      size     = 10
    }
  }

#  secondary_disk {
#    disk_id = yandex_compute_disk.empty-disk.id  
#    }

  dynamic secondary_disk {
    for_each = yandex_compute_disk.empty-disk
    content{
        disk_id = yandex_compute_disk.empty-disk[length([yandex_compute_disk.empty-disk])+1].id    
    } 
  }
  
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.serial_port_enable
    ssh-keys           = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}


