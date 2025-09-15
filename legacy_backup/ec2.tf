# Provisiona a EC2 Amazon Linux mais atual na subnet pública
resource "aws_instance" "lab" {
  ami                         = "ami-04902260ca3d33422"    # Amazon Linux 2023, us-east-1
  instance_type               = "t2.micro"                 # Free Tier elegível
  subnet_id                   = aws_subnet.public_1a.id
  vpc_security_group_ids      = [aws_security_group.ssh_lab.id]
  associate_public_ip_address = true                       # IP público = acesso externo
  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name


  tags = {
    Name        = "iacdemo-lab-ec2"
    Environment = "lab"
  }

  # Key pair só é obrigatória para SSH tradicional
  key_name = aws_key_pair.lab_key.key_name
}

# Criação opcional do par de chaves SSH local. 
# Gere um par de chaves antes e aponte o caminho:
resource "aws_key_pair" "lab_key" {
  key_name   = "iacdemo-ssh-key"
  public_key = file("C:\\Users\\vialo\\.ssh\\iacdemo.pub")              # Ajuste o caminho da sua chave pública conforme necessário
}
