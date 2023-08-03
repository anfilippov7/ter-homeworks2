data "yandex_compute_image" "ubuntu2" {
  family = var.vm_web_family
}
resource "yandex_compute_instance" "web2" {
  for_each = toset(["main", "replica"])
  name        = "${var.name_vm}-${each.key}"
  platform_id = var.vm_web_platform_id
  dynamic "resources" {
    for_each = var.config_vm_resources
    content {
        cores     = lookup(resources.value, "cores")
        memory  = lookup(resources.value,  "memory")
        core_fraction    = lookup(resources.value, "core_fraction")
    }
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = 10
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
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }
}




