# main.tf
# Cria uma VPC isolada para seu ambiente de laboratório/teste.

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"          # Faixa de endereços da VPC IP privada
  enable_dns_support = true           # Habilita DNS interno
  enable_dns_hostnames = true         # Habilita nomes DNS para instâncias
  tags = {
    Name = "iacdemo-vpc-main"         # Nome visível no console AWS
    Environment = "lab"               # Tag para organização
  }
}

# Importância: Este bloco cria a estrutura de rede base (VPC)
# fundamental para todo o provisionamento AWS customizado.
# A VPC isola seus recursos, garantindo segurança e controle.