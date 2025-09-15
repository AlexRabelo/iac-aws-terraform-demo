# variables.tf - Variáveis de entrada para IGW e Route Table

variable "vpc_id" {
  description = "ID da VPC em que o IGW e Route Table serão criados"
  type        = string
}

variable "subnet_id" {
  description = "ID da Subnet pública a ser associada à Route Table"
  type        = string
}

variable "igw_name" {
  description = "Nome do Internet Gateway (tag Name)"
  type        = string
}

variable "route_table_name" {
  description = "Nome da Route Table pública (tag Name)"
  type        = string
}
