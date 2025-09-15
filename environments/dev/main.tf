# main.tf - Arquivo principal do ambiente 'dev'
# Função: Chamar módulos reutilizáveis para compor VPC, Subnet, Internet Gateway e Route Table

# Chama o módulo VPC/Subnet pública, passando parâmetros específicos para dev
module "vpc" {
  source      = "../../modules/vpc"
  vpc_cidr    = "10.0.0.0/16"          # CIDR da VPC dev
  subnet_cidr = "10.0.1.0/24"          # CIDR da subnet pública dev
  vpc_name    = "iacdemo-vpc-dev"
  subnet_name = "iacdemo-public-subnet-dev"
  az          = "us-east-1a"           # Zona de disponibilidade (pode ser variável)
}

# Chama o módulo Network, responsável por IGW e Route Table pública
module "network" {
  source           = "../../modules/network"
  vpc_id           = module.vpc.vpc_id      # Utiliza saída (output) do módulo VPC
  subnet_id        = module.vpc.subnet_id   # Utiliza saída (output) do módulo VPC para subnet
  igw_name         = "iacdemo-igw-dev"
  route_table_name = "iacdemo-public-rt-dev"
}

# Adicione aqui os próximos módulos: security group, EC2, etc.
# Exemplo:
# module "ec2" {
#   source = "../../modules/ec2"
#   ...
# }
