resource "yandex_mdb_mysql_database" "test_db" {
  cluster_id = var.cluster_id
  name       = var.name_db
}










