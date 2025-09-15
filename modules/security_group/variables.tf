# variables.tf - Declara variáveis de entrada do módulo SG

variable "sg_name" {
  description = "Nome do Security Group (tag Name)"
  type        = string
}

variable "sg_description" {
  description = "Descrição do Security Group"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC à qual o Security Group pertence"
  type        = string
}

variable "cidr_blocks_ssh" {
  description = "Lista de blocos CIDR permitidos para SSH (ingress)"
  type        = list(string)
}
