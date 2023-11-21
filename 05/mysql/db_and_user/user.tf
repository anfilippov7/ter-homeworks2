resource "yandex_mdb_mysql_user" "create_user" {
    cluster_id = var.cluster_id
    name       = var.name_user
    password   = var.password_user

    permission {
      database_name = yandex_mdb_mysql_database.test_db.name
      roles         = var.permission_roles
    }

    connection_limits {
      max_questions_per_hour   = 10
      max_updates_per_hour     = 20
      max_connections_per_hour = 30
      max_user_connections     = 40
    }
}





