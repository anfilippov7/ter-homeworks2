locals {
    my_web = [for webserver in yandex_compute_instance.web: {"name" = webserver.name, "id" = webserver.id, "fqdn" = webserver.fqdn}]
    my_database = [for databaseserver in yandex_compute_instance.web: {"name" = databaseserver.name, "id" = databaseserver.id, "fqdn" = databaseserver.fqdn}]
    my_storage = [{"name" = yandex_compute_instance.storage.name, "id" = yandex_compute_instance.storage.id, "fqdn" = yandex_compute_instance.storage.fqdn}]
}

output created_vm {
  value       = concat(local.my_web, local.my_database, local.my_storage)
  sensitive   = false
  description = "description"
  depends_on  = []
}
