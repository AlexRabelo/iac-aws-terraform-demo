# variables.tf - Declara variáveis de entrada do módulo VPC

variable "vpc_cidr" {
  description = "CIDR block para a VPC (ex: 10.0.0.0/16)"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block para a Subnet pública (ex: 10.0.1.0/24)"
  type        = string
}

variable "vpc_name" {
  description = "Nome do recurso VPC no campo 'Name' da tag"
  type        = string
}

variable "subnet_name" {
  description = "Nome do recurso Subnet no campo 'Name' da tag"
  type        = string
}

variable "az" {
  description = "Availability Zone da Subnet pública (ex: us-east-1a)"
  type        = string
}

# Permite inserir múltiplas tags em todos os recursos deste módulo.
# Recomenda-se sempre inserir tags de Owner, Environment e Project para facilitar rastreabilidade e compliance.
variable "tags" {
  description = "Mapa de tags padrão para todos os recursos (ex: Owner, Environment, Project)"
  type        = map(string)
  default     = {}
}
