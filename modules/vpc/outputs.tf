# outputs.tf - Outputs reutilizáveis do módulo VPC
#
# Use os outputs em outros módulos para conectar/subsidiar recursos (ex: subnets, security groups, etc.)

output "vpc_id" {
  description = "ID da VPC criada pelo modulo"
  value       = aws_vpc.this.id
}

output "subnet_id" {
  description = "ID da Subnet pública criada pelo modulo"
  value       = aws_subnet.public.id
}
# Adicione outros outputs conforme necessário, como route table ID, etc.