# main.tf - Módulo NETWORK
#
# Este módulo cria um Internet Gateway (IGW) e uma Route Table pública com associação em Subnet.
# Todas as tags são inseridas automaticamente através da variável 'tags' recebida do ambiente.

# Criação do Internet Gateway, associado à VPC informada
resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id

  # Tags de identificação e governança
  tags = merge(
    { Name = var.igw_name },
    var.tags
  )
}

# Criação da Route Table pública associada à VPC
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  tags = merge(
    { Name = var.route_table_name },
    var.tags
  )
}

# Adiciona rota padrão para acesso à internet através do IGW
resource "aws_route" "default_internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.this.id
}

# Associa a Route Table pública à Subnet pública informada
resource "aws_route_table_association" "public_subnet" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public.id
}
# Fim do módulo NETWORK