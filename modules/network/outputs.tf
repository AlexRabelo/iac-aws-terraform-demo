# outputs.tf - Outputs para reaproveitar IGW e Route Table

output "igw_id" {
  description = "ID do Internet Gateway criado"
  value       = aws_internet_gateway.this.id
}

output "route_table_id" {
  description = "ID da Route Table pública criada"
  value       = aws_route_table.public.id
}
