# outputs.tf - Outputs do módulo SG

output "sg_id" {
  description = "ID do Security Group criado"
  value       = aws_security_group.lab.id
}
