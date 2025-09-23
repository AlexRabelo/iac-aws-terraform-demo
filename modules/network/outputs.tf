# outputs.tf - Outputs do módulo NETWORK
#
# Use os outputs em outros módulos para conectar recursos de forma segura e padronizada.

output "igw_id" {
  description = "ID do Internet Gateway criado pelo modulo"
  value       = aws_internet_gateway.this.id
}

output "route_table_id" {
  description = "ID da Route Table pública criada pelo modulo"
  value       = aws_route_table.public.id
}
