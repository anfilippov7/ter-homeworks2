variable "core" {
  type        = string
  default     = "netology"
  description = "name core cloud"
}

variable "env" {
  type        = string
  default     = "develop"
  description = "name env cloud"
}

variable "project" {
  type        = string
  default     = "platform"
  description = "name project cloud"
}

variable "vms_resources" {
  description = "resourses VMS cloud"
  default     = {
    vm_web_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 20      
    }

    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "data_connection_vm" {
  description = "serial_port_enable value VM, ssh-keygen -t ed25519"
  default     = {
    vm_db_serial_port_enable = {
      default = 1  
    }

    vms_ssh_root_key = {
      default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8Ygnnb/G6ShIAV4X6ESqTgADZI+MfDaaPHvXoOjvCtxKmm1f2vMJV7HwnBHKCVmZT2JGwxixynZr/u6G/Z/RySMZZlcNidYmz76QMEghuhoCyhGxAavWDfnw1B1e43gSlAqMoVZe9+jZ/lqhC5GI1RGLGrssctppHF/1hpfgmgRjRs/Vc+6wD3++CfwfTXJHO6NX9TJ3+J4WamdD76pyvX+8DljD8e9L7js7wh9V6M3YwoV6u8G+TawaTivWa2Pv6/YtO5sXQxtu2HmhLtEb+WKN0D3i4JYSzwQ7rh1v+k00xzHgo5nW2/NaQSZ0xLUv3BFzQMoD/zi7oYdKY78JxXGkV8SA61zpVYUIbdNt6b0Q0l/TkZy1IBIghFMCFC51qqUwbvGEjFJxpnp2w/hXWMnb23Xtz3xp+W8UyxsKnRjtg11VrvGAqMYcCnf+z1xq+855xAvpP93Tjsvooks+nsTMsnxgMzDZVKqsBvZFTk+yMLdHbKSEOaOhwxXP4PD1IOOnXjQId1htGB0qexHwgYwyHxmwEqT0/O0Uu6mxzG0pdAsXyplOQZO5cWZRqQLFWzvaMWZ3ywaIqSPtvrgQLGy/hCnW3u8EO2RmRhECDLvx/VpUDC5JB2xjCd2UYmDC/WI4ioNCGXCMVOAyjnWY/snedhuGw5++DWOPfVmQDew=="
    }
  }
}





