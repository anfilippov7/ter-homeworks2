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


variable "vm_web_resources" {
  description = "resourses VM cloud"
  type        = map(number)
  default     = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
}

variable "vm_db_resources" {
  description = "resourses VM cloud"
  type        = map(number)
  default     = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}