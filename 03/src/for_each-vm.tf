data "yandex_compute_image" "ubuntu2" {
  family = var.vm_web_family
}
resource "yandex_compute_instance" "web2" {
  depends_on = [yandex_compute_instance.web, yandex_compute_instance.storage]
  for_each = {
    "main" = [var.vms_resources["vm_main_resources"]["cores"], var.vms_resources["vm_main_resources"]["memory"], var.vms_resources["vm_main_resources"]["core_fraction"], var.vms_resources["vm_main_resources"]["size"]]
    "replica" = [var.vms_resources["vm_replica_resources"]["cores"], var.vms_resources["vm_replica_resources"]["memory"], var.vms_resources["vm_replica_resources"]["core_fraction"], var.vms_resources["vm_replica_resources"]["size"]]
    }
  name        = "${var.name_vm}-${each.key}"
  platform_id = var.vm_web_platform_id
  resources {
    cores         = "${each.value[0]}"
    memory        = "${each.value[1]}"
    core_fraction = "${each.value[2]}"

  } 
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = "${each.value[3]}"
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




