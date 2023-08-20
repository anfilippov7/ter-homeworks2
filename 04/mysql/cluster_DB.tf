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

#создаем пользователя и БД
module "vpc_user_database" {
#  depends_on         = [module.vpc_mysql_cluster]
  source             = "./db_and_user"
  cluster_id         = module.vpc_mysql_cluster.vpc_mysql_cluster_id
  name_db            = var.name_db 
  name_user          = var.name_user  
  cloud_id           = var.cloud_id
  folder_id          = var.folder_id
  token              = var.token
}