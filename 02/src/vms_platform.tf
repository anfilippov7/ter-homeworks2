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

variable "vm_db_serial_port_enable" {
  type        = number
  default = 1
  description = "serial_port_enable value VM"
}



###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8Ygnnb/G6ShIAV4X6ESqTgADZI+MfDaaPHvXoOjvCtxKmm1f2vMJV7HwnBHKCVmZT2JGwxixynZr/u6G/Z/RySMZZlcNidYmz76QMEghuhoCyhGxAavWDfnw1B1e43gSlAqMoVZe9+jZ/lqhC5GI1RGLGrssctppHF/1hpfgmgRjRs/Vc+6wD3++CfwfTXJHO6NX9TJ3+J4WamdD76pyvX+8DljD8e9L7js7wh9V6M3YwoV6u8G+TawaTivWa2Pv6/YtO5sXQxtu2HmhLtEb+WKN0D3i4JYSzwQ7rh1v+k00xzHgo5nW2/NaQSZ0xLUv3BFzQMoD/zi7oYdKY78JxXGkV8SA61zpVYUIbdNt6b0Q0l/TkZy1IBIghFMCFC51qqUwbvGEjFJxpnp2w/hXWMnb23Xtz3xp+W8UyxsKnRjtg11VrvGAqMYcCnf+z1xq+855xAvpP93Tjsvooks+nsTMsnxgMzDZVKqsBvZFTk+yMLdHbKSEOaOhwxXP4PD1IOOnXjQId1htGB0qexHwgYwyHxmwEqT0/O0Uu6mxzG0pdAsXyplOQZO5cWZRqQLFWzvaMWZ3ywaIqSPtvrgQLGy/hCnW3u8EO2RmRhECDLvx/VpUDC5JB2xjCd2UYmDC/WI4ioNCGXCMVOAyjnWY/snedhuGw5++DWOPfVmQDew=="
  description = "ssh-keygen -t ed25519"
}