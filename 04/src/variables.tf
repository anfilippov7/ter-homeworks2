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

###common vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8Ygnnb/G6ShIAV4X6ESqTgADZI+MfDaaPHvXoOjvCtxKmm1f2vMJV7HwnBHKCVmZT2JGwxixynZr/u6G/Z/RySMZZlcNidYmz76QMEghuhoCyhGxAavWDfnw1B1e43gSlAqMoVZe9+jZ/lqhC5GI1RGLGrssctppHF/1hpfgmgRjRs/Vc+6wD3++CfwfTXJHO6NX9TJ3+J4WamdD76pyvX+8DljD8e9L7js7wh9V6M3YwoV6u8G+TawaTivWa2Pv6/YtO5sXQxtu2HmhLtEb+WKN0D3i4JYSzwQ7rh1v+k00xzHgo5nW2/NaQSZ0xLUv3BFzQMoD/zi7oYdKY78JxXGkV8SA61zpVYUIbdNt6b0Q0l/TkZy1IBIghFMCFC51qqUwbvGEjFJxpnp2w/hXWMnb23Xtz3xp+W8UyxsKnRjtg11VrvGAqMYcCnf+z1xq+855xAvpP93Tjsvooks+nsTMsnxgMzDZVKqsBvZFTk+yMLdHbKSEOaOhwxXP4PD1IOOnXjQId1htGB0qexHwgYwyHxmwEqT0/O0Uu6mxzG0pdAsXyplOQZO5cWZRqQLFWzvaMWZ3ywaIqSPtvrgQLGy/hCnW3u8EO2RmRhECDLvx/VpUDC5JB2xjCd2UYmDC/WI4ioNCGXCMVOAyjnWY/snedhuGw5++DWOPfVmQDew=="
  description = "ssh-keygen -t ed25519"
}

###example vm_web var
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "example vm_web_ prefix"
}

###example vm_db var
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "example vm_db_ prefix"
}

variable "subnets_list" {
  type        = list(object(
    {
       zone = string
       cidr = string 
    }
      ))
  default     = [
    { zone = "ru-central1-a", cidr = "10.0.1.0/24" },
    { zone = "ru-central1-b", cidr = "10.0.2.0/24" },
    { zone = "ru-central1-c", cidr = "10.0.3.0/24" },
  ]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "my_net"
  description = "vpc_name"
}

