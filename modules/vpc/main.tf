# main.tf - Cria VPC e Subnet pública no módulo VPC

# Cria a VPC principal
resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

# Cria a subnet pública associada à VPC acima
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az
  map_public_ip_on_launch = true            # Garante IP público para instâncias lançadas aqui
  tags = {
    Name = var.subnet_name
  }
}
