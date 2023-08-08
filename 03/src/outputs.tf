locals {
    my_web = [for webserver in yandex_compute_instance.web: {"name" = webserver.name, "id" = webserver.id, "fqdn" = webserver.fqdn}]
}

output created_vm {
  value       = flatten([local.my_web, {"name" = yandex_compute_instance.storage.name, "id" = yandex_compute_instance.storage.id, "fqdn" = yandex_compute_instance.storage.fqdn},
                {"name" = yandex_compute_instance.database["main"].name, "id" = yandex_compute_instance.database["main"].id, "fqdn" =  yandex_compute_instance.database["main"].fqdn},
                {"name" = yandex_compute_instance.database["replica"].name, "id" =  yandex_compute_instance.database["replica"].id, "fqdn" =  yandex_compute_instance.database["replica"].fqdn}])
  sensitive   = false
  description = "description"
  depends_on  = []
}
