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
      default     = "ssh-rsa <your public ssh>"
    }
  }
}





