# outputs.tf - Define outputs para reaproveitar VPC e Subnet em outros módulos

output "vpc_id" {
  description = "ID da VPC criada pelo módulo"
  value       = aws_vpc.this.id
}

output "subnet_id" {
  description = "ID da subnet pública criada pelo módulo"
  value       = aws_subnet.public.id
}
