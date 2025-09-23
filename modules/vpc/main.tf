# main.tf - Módulo VPC
#
# Este módulo provisiona uma VPC e uma Subnet pública, aplicando tags customizáveis via variável "tags".
# Use este módulo para ambientes de desenvolvimento, testes ou produção, adaptando nomes e tags conforme necessário.

# Criação da VPC principal
resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true   # Habilita DNS interno na VPC
  enable_dns_hostnames = true   # Facilita acesso a instâncias por DNS

  # Tags de identificação e governança (Name customiza, restante herdado de var.tags no arquivo variables.tf)
  tags = merge(
    { Name = var.vpc_name },
    var.tags
  )
}

# Criação de Subnet pública associada à VPC
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.az
  map_public_ip_on_launch = true # Garante IP público automático

  # Tags customizadas para rastreamento e governança
  tags = merge(
    { Name = var.subnet_name },
    var.tags
  )
}
# Adicione outros recursos conforme necessário, como route tables, etc.