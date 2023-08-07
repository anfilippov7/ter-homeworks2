###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "name_vm" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "name VM cloud"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "standard platform VM"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu release name"
}

variable "serial_port_enable" {
  type        = number
  default     = 1
  description = "serial_port_status"
}

variable "vms_resources" {
  description = "resourses VMS cloud"
  default     = {
    vm_main_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 20 
      size          = 5     
    }

    vm_replica_resources = {
      cores         = 4
      memory        = 2
      core_fraction = 50
      size          = 10 
    }
  }
}


