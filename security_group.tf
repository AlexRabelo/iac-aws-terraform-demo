# Cria um Security Group permitindo acesso SSH (porta 22)
# Ideal para laboratório: não use regra aberta em produção!
resource "aws_security_group" "ssh_lab" {
  name        = "iacdemo-ssh-lab"
  description = "Habilita SSH para laboratorio"
  vpc_id      = aws_vpc.main.id  # Vincula SG à VPC

  # Libera entrada SSH para qualquer IP (ajuste para uso real!)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Libera toda saída para internet (default)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "iacdemo-ssh-lab"
    Environment = "lab"
  }
}
