###cloud vars
variable "token" {
  type        = string
  description = "y0_AgAAAAAJ2UEnAATuwQAAAADnmDj0cLbl79NPSeKs8ufaScNaBy93JYI"
}

variable "cloud_id" {
  type        = string
  description = "b1gfboajr02kesda5lgl"
}

variable "folder_id" {
  type        = string
  description = "b1g7kr9i41eoi2fqj52o"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "ru-central1-a"
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

variable "env_name" {
  type        = string
  default     = "develop"
  description = "env_name"
}

variable "instance_name" {
  type        = string
  default     = "web"
  description = "instance_name"
}

variable "instance_count" {
  type        = number
  default     = 1
  description = "instance_count"
}

variable "image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "image_family"
}

variable "ip_address" {
  type        = string
  default     = "192.168.0.1"
  description = "ip-адрес"

  validation {
    condition     = can(regex("^(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[0-9]{2}|[0-9])(\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[0-9]{2}|[0-9])){3}$", var.ip_address))
    error_message = "Invalid ip address"
  }
}

variable "ip_address_list" {
  type        = list(string)
  default     = ["192.168.0.1", "1.1.1.1", "127.0.0.1"]
  description = "список ip-адресов"

  validation {
    condition     = alltrue([for ip_address in var.ip_address_list:
    can(regex("^(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[0-9]{2}|[0-9])(\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[0-9]{2}|[0-9])){3}$", ip_address)) ])
    error_message = "Invalid ip address"
  }
}

variable "lower_string" {
  type = string
  default     = "строка должна содержать символы нижнего регистра"
  description = "любая строка"

  validation {
    condition     = substr(var.lower_string, 0, length(var.lower_string)) == lower(substr(var.lower_string, 0, length(var.lower_string)))
    error_message = "Upper simbol"
  }
}

variable "in_the_end_there_can_be_only_one" {
    description="Who is better Connor or Duncan?"
    type = object({
        Dunkan = optional(bool)
        Connor = optional(bool)
    })

    default = {
        Dunkan = true
        Connor = true
    }

    validation {
        error_message = "There can be only one MacLeod"
        condition     = (var.in_the_end_there_can_be_only_one["Dunkan"] == true && var.in_the_end_there_can_be_only_one["Connor"] == false) || (var.in_the_end_there_can_be_only_one["Dunkan"] == false && var.in_the_end_there_can_be_only_one["Connor"] == true)

    }
}