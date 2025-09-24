# main.tf - Arquivo principal do ambiente 'dev'
# Função: Chamar módulos reutilizáveis para compor VPC, Subnet, Internet Gateway e Route Table

# main.tf - Arquivo principal do ambiente 'dev'
# Função: Chamar módulos reutilizáveis para compor VPC, Subnet, Internet Gateway e Route Table

# --- Variável local para tags padrão (pode ser usada em todos os módulos) ---
locals {
  default_tags = {
    Owner       = "alexrabelo"
    Environment = "dev"
    Project     = "iac-aws-demo"
  }
}

# Chama o módulo VPC/Subnet pública, passando parâmetros específicos para dev
module "vpc" {
  source      = "../../modules/vpc"
  vpc_cidr    = "10.0.0.0/16"         # CIDR da VPC dev
  subnet_cidr = "10.0.1.0/24"         # CIDR da subnet pública dev
  vpc_name    = "iacdemo-vpc-dev"
  subnet_name = "iacdemo-public-subnet-dev"
  az          = "us-east-1a"          # Zona de disponibilidade (pode ser variável)
  tags = local.default_tags         # Descomente após ajustar o módulo VPC para receber tags como variável
}

# Chama o módulo Network, responsável por IGW e Route Table pública
module "network" {
  source           = "../../modules/network"
  vpc_id           = module.vpc.vpc_id               # Utiliza saída (output) do módulo VPC
  subnet_id        = module.vpc.subnet_id            # Utiliza saída (output) do módulo VPC para subnet
  igw_name         = "iacdemo-igw-dev"
  route_table_name = "iacdemo-public-rt-dev"
  tags = local.default_tags         # Descomente após ajustar o módulo Network para receber tags como variável
}

# Chama módulo Security Group padrão para EC2 de laboratório
module "security_group" {
  source          = "../../modules/security_group"
  sg_name         = "iacdemo-sg-lab"
  sg_description  = "Security Group - Lab SSH"
  vpc_id          = module.vpc.vpc_id               # Usa output do módulo VPC
  cidr_blocks_ssh = ["0.0.0.0/0"]                   # Só para testes! (Na prática, restrinja para seu IP)
  #tags = local.default_tags         # Adicione tags após adaptar seu módulo
}

# Provisiona Role e Instance Profile para uso do AWS SSM
module "ssm_role" {
  source       = "../../modules/ssm_role"
  role_name    = "iacdemo-ec2-ssm"
  profile_name = "iacdemo-ec2-ssm-profile"
  # tags = local.default_tags         # Adicione tags após adaptar seu módulo
}

# Chama módulo EC2 para criar a instância
module "ec2" {
  source                 = "../../modules/ec2"
  ami_id                 = "ami-04902260ca3d33422"   # Altere conforme a região e atualização
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.subnet_id
  sg_id                  = module.security_group.sg_id
  associate_public_ip    = true                      # Para laboratório/teste
  iam_instance_profile   = module.ssm_role.iam_instance_profile_name # Ou insira o profile do SSM, se modularizou
  key_name               = null                      # Ou sua key para SSH tradicional, se desejar
  ec2_name               = "iacdemo-lab-ec2"
  environment            = "lab"
  # tags = local.default_tags         # Adicione tags após adaptar seu módulo
}

# Adicione aqui os próximos módulos: security group, EC2, etc.
# Exemplo:
# module "ec2" {
#   source = "../../modules/ec2"
#   ...
# }
