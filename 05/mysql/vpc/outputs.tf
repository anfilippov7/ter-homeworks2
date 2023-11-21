output "vpc_mysql_cluster_id" {
  value       = yandex_mdb_mysql_cluster.vpc_mysql_cluster.id
  sensitive   = false
  description = "description"
  depends_on  = []
}

output "cluster_subnet_id" {
  value       = yandex_vpc_subnet.cluster_subnet.id
  sensitive   = false
  description = "description"
  depends_on  = []
}
