# main.tf - Cria Internet Gateway (IGW) e Route Table pública para VPC/subnet

# Cria o Internet Gateway e associa à VPC informada
resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.igw_name
  }
}

# Cria Route Table pública associada à VPC
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.route_table_name
  }
}

# Adiciona rota padrão 0.0.0.0/0 para o IGW criado
resource "aws_route" "default_internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.this.id
}

# Associa a Route Table pública à subnet pública informada
resource "aws_route_table_association" "public_subnet" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public.id
}
