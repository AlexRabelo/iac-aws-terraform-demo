# main.tf - Modulo IAM Role para EC2 acessar SSM (Session Manager)

# Cria role IAM com trust policy para EC2
resource "aws_iam_role" "ssm_ec2" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Anexa a policy pronta do SSM
resource "aws_iam_role_policy_attachment" "ssm_core" {
  role       = aws_iam_role.ssm_ec2.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# Cria Instance Profile para EC2 associar a role
resource "aws_iam_instance_profile" "ssm_profile" {
  name = var.profile_name
  role = aws_iam_role.ssm_ec2.name
}
