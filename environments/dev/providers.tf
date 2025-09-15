# providers.tf
# Informa ao Terraform qual provedor usar (AWS), região e perfil de autenticação.

provider "aws" {
  region  = "us-east-1"   # Região onde os recursos serão criados
  profile = "iacdemo"     # Perfil do AWS CLI vinculado ao usuário IAM do projeto
}

# Importância: Este bloco conecta o Terraform à AWS com acesso seguro via perfil IAM.
# Certifique-se de que o perfil "iacdemo" esteja configurado no seu AWS CLI.