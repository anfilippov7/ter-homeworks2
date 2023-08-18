#создаем кластер
module "vpc_mysql_cluster" {
  source             = "./vpc" 
  HA                 = var.HA
  vpc_name           = var.vpc_name
  mysql_cluster_name = var.mysql_cluster_name
  disk_size          = var.disk_size
  cloud_id           = var.cloud_id
  folder_id          = var.folder_id
  token              = var.token
}