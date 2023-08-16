#создаем облачную сеть
module "vpc" {
  source        = "./vpc"
  vpc_name = var.vpc_name
  subnets = var.subnets_list
}

module "test-vm" {
  source          = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name        = var.env_name
  network_id      = module.vpc.vpc_id
  subnet_zones    = [for subnet in var.subnets_list: subnet.zone]
  subnet_ids      = module.vpc.subnet_vpc_id
  instance_name   = var.instance_name
  instance_count  = var.instance_count
  image_family    = var.image_family
  public_ip       = true
  
  metadata = {
      user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
      serial-port-enable = 1
  }
}

#Пример передачи cloud-config в ВМ для демонстрации №3
data "template_file" "cloudinit" {
 template = file("./cloud-init.yml")
 vars = {
    vms_ssh_root_key = var.vms_ssh_root_key
 }
}

