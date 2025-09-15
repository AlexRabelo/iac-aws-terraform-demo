# main.tf - Módulo Security Group (SG) para laboratório AWS
# Função: Cria SG padrão permitindo tráfego de entrada/saída conforme regras fornecidas

resource "aws_security_group" "lab" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  # Regras de entrada
  ingress {
    description = "Permitir SSH para acesso em laboratorio"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks_ssh # Ex: ["0.0.0.0/0"] para testes (lembre: nunca use em produção)
  }

  # Regras de saída (all open)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}
