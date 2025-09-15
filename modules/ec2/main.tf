# main.tf - Modulo EC2 para laboratorio AWS
# Cria uma instancia EC2 Amazon Linux associada ao SG e subnet indicados

resource "aws_instance" "lab" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = var.associate_public_ip
  iam_instance_profile   = var.iam_instance_profile
  key_name               = var.key_name

  tags = {
    Name        = var.ec2_name
    Environment = var.environment
  }
}
