# route_table.tf
# Cria uma tabela de rotas (route table) pública e associa à subnet

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id                      # Route table pertence à mesma VPC
  tags = {
    Name        = "iacdemo-public-rt"
    Environment = "lab"
  }

  # Rota padrão (0.0.0.0/0) via IGW, permitindo tráfego para/da internet
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
}

# Associa a tabela de rotas pública à sua subnet pública criada antes
resource "aws_route_table_association" "public_1a" {
  subnet_id      = aws_subnet.public_1a.id            # ID da sua subnet pública
  route_table_id = aws_route_table.public.id           # ID da route table pública
}
# A associação acima garante que instâncias na subnet pública usem a route table com rota para o IGW