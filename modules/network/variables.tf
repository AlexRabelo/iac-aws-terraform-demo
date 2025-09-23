# variables.tf - Variáveis de entrada do módulo NETWORK

variable "vpc_id" {
  description = "ID da VPC na qual o IGW e a Route Table serao criados"
  type        = string
}

variable "subnet_id" {
  description = "ID da Subnet pública a ser associada a Route Table"
  type        = string
}

variable "igw_name" {
  description = "Nome do recurso Internet Gateway (usado na tag Name)"
  type        = string
}

variable "route_table_name" {
  description = "Nome da Route Table publica (usado na tag Name)"
  type        = string
}

# Permite inserir múltiplas tags em todos os recursos deste módulo.
# Recomenda-se inserir Owner, Environment e Project para facilitar governança.
variable "tags" {
  description = "Mapa de tags para identificacao e rastreabilidade de recursos"
  type        = map(string)
  default     = {}
}
