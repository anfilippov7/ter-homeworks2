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

variable "HA" {
  type        = bool
  default     = true
  description = "count hoat cluster"
}

variable "vpc_name" {
  type        = string
  default     = "mysql_net"
  description = "mysql network"
}

variable "mysql_cluster_name" {
  type        = string
  default     = "vpc_mysql_cluster"
  description = "mysql_cluster_name"
}

variable "mysql_environment" {
  type        = string
  default     = "PRESTABLE"
  description = "mysql_environment"
}

variable "mysql_version" {
  type        = string
  default     = "8.0"
  description = "mysql_version"
}

variable "resource_preset_id" {
  type        = string
  default     = "s2.micro"
  description = "resource_preset_id"
}

variable "disk_type_id" {
  type        = string
  default     = "network-ssd"
  description = "disk_type_id"
}

variable "disk_size" {
  type        = number
  default     = 10
  description = "disk_size"
}

variable "maintenance_window_type" {
  type        = string
  default     = "WEEKLY"
  description = "maintenance_window_type"
}

variable "maintenance_window_day" {
  type        = string
  default     = "SAT"
  description = "maintenance_window_day"
}

variable "maintenance_window_hour" {
  type        = number
  default     = 12
  description = "maintenance_window_hour"
}

variable "name_db" {
  type        = string
  default     = "test"
  description = "name database"
}

variable "name_user" {
  type        = string
  default     = "app"
  description = "name user"
}
