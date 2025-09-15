# variables.tf - Variaveis de entrada para modularizacao da EC2

variable "ami_id" {
  description = "AMI ID para EC2 (exemplo: Amazon Linux 2023)"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia (ex: t2.micro)"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID para lancamento da EC2"
  type        = string
}

variable "sg_id" {
  description = "ID do Security Group a ser associado"
  type        = string
}

variable "associate_public_ip" {
  description = "Se deve associar IP publico ao lancar (true/false)"
  type        = bool
}

variable "iam_instance_profile" {
  description = "Nome do perfil IAM para EC2 (opcional)"
  type        = string
  default     = null
}

variable "key_name" {
  description = "Chave SSH para acesso tradicional (opcional)"
  type        = string
  default     = null
}

variable "ec2_name" {
  description = "Nome da instancia EC2 (tag Name)"
  type        = string
}

variable "environment" {
  description = "Nome do ambiente (lab, dev, prod, etc)"
  type        = string
}
