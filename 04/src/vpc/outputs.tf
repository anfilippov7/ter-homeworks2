output "vpc_id" {
  value       = yandex_vpc_network.vpc.id
  sensitive   = false
  description = "description"
  depends_on  = []
}

output "subnet_vpc_id" {
  value       = [for subnet in yandex_vpc_subnet.subnet_vpc:  subnet.id]
  sensitive   = false
  description = "description"
  depends_on  = []
}


