# igw.tf
# Cria o Internet Gateway, “porta de saída/entrada” para liberar tráfego da VPC para a internet

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id                      # Associa o IGW à VPC criada anteriormente
  tags = {
    Name        = "iacdemo-igw"                 # Nome visível no console AWS
    Environment = "lab"
  }
}
