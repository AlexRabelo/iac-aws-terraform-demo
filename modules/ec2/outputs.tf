# outputs.tf - Outputs do modulo EC2 para reutilizacao

output "instance_id" {
  description = "ID da instancia EC2 criada"
  value       = aws_instance.lab.id
}

output "public_ip" {
  description = "IP publico da EC2 (se houver)"
  value       = aws_instance.lab.public_ip
}
