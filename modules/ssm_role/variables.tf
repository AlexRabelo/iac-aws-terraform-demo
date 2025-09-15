# variables.tf - Variaveis do modulo SSM Role

variable "role_name" {
  description = "Nome da IAM Role para EC2"
  type        = string
}

variable "profile_name" {
  description = "Nome do Instance Profile para EC2"
  type        = string
}
