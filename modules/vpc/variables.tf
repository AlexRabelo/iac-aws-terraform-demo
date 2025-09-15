# variables.tf - Declara variáveis de entrada do módulo VPC

variable "vpc_cidr" {
  description = "CIDR block para a VPC (ex: 10.0.0.0/16)"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block para a subnet pública (ex: 10.0.1.0/24)"
  type        = string
}

variable "vpc_name" {
  description = "Nome do recurso VPC no tag Name"
  type        = string
}

variable "subnet_name" {
  description = "Nome do recurso Subnet no tag Name"
  type        = string
}

variable "az" {
  description = "Availability Zone da subnet pública (ex: us-east-1a)"
  type        = string
}
