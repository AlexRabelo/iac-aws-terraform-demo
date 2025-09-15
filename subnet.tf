# subnet.tf
# Cria uma subnet pública simples associada à VPC criada no passo anterior.

resource "aws_subnet" "public_1a" {
  vpc_id                  = aws_vpc.main.id          # Relaciona à VPC existente
  cidr_block              = "10.0.1.0/24"            # Faixa de IPs da subnet (pequeno bloco dentro da VPC)
  availability_zone       = "us-east-1a"             # AZ específica (pode variar depois para alta disponibilidade)
  map_public_ip_on_launch = true                     # Atribui IP público automaticamente a instâncias lançadas aqui
  tags = {
    Name        = "iacdemo-public-1a"
    Environment = "lab"
  }
}
