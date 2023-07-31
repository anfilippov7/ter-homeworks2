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
  description = "VPC network & subnet name"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu release name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "standard platform VM"
}

variable "vm_web_cores" {
  type        = number
  default = 2
  description = "cores value VM"
}

variable "vm_web_memory" {
  type        = number
  default = 1
  description = "memory value VM"
}

variable "vm_web_core_fraction" {
  type        = number
  default = 20
  description = "core_fraction value VM"
}

variable "vm_web_preemptible" {
  type        = bool
  default = true
  description = "preemptible value VM"
}

variable "vm_web_nat" {
  type        = bool
  default = true
  description = "nat value VM"
}

variable "vm_web_serial_port_enable" {
  type        = number
  default = 1
  description = "serial_port_enable value VM"
}



variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu release name"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "standard platform VM"
}

variable "vm_db_cores" {
  type        = number
  default = 2
  description = "cores value VM"
}

variable "vm_db_memory" {
  type        = number
  default = 2
  description = "memory value VM"
}

variable "vm_db_core_fraction" {
  type        = number
  default = 20
  description = "core_fraction value VM"
}

variable "vm_db_preemptible" {
  type        = bool
  default = true
  description = "preemptible value VM"
}

variable "vm_db_nat" {
  type        = bool
  default = true
  description = "nat value VM"
}

