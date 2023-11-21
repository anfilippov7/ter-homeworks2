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

variable "name_db" {
  type        = string
  default     = "testdb"
  description = "name database"
}

variable "name_user" {
  type        = string
  default     = "aleksander"
  description = "name user"
}

variable "password_user" {
  type        = string
  default     = "password"
  description = "password user"
}

variable "cluster_id" {
  type        = string

}

variable "permission_roles" {
  type        = list(string)
  default     = ["ALL"]
  description = "permission_roles"
}
