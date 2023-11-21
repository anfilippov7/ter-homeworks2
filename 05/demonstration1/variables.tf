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
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "10.0.1.0/24"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "public_key" {
  type    = string
  default = ""
}
