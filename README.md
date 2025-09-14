# 🚀 Infrastructure as Code - AWS Terraform Demo

<div align="center">

[![Terraform](https://img.shields.io/badge/Terraform-1.0+-623CE4?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![GitHub Actions](https://img.shields.io/badge/CI/CD-GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions)

</div>

---

## 📋 Sobre o Projeto

Exemplo prático de **infraestrutura como código (IaC)** utilizando Terraform para provisionamento de recursos AWS. 

Este projeto demonstra boas práticas de DevOps incluindo:
- 🔧 **VPC, EC2, S3** e outros recursos AWS
- 🚀 **Pipelines CI/CD** com GitHub Actions  
- 📁 **Organização modular** e reutilizável
- ✅ **Boas práticas** de segurança e versionamento

---

## 🎯 Objetivos

| Funcionalidade | Descrição |
|---------------|-----------|
| 🧪 **Experimentação** | Testar recursos AWS via Terraform de forma segura |
| 📐 **Organização Modular** | Estrutura escalável e reutilizável |
| 🔄 **Automação CI/CD** | Deploy automatizado com GitHub Actions |
| 📚 **Documentação** | Guias e exemplos práticos |

---

## 🏗️ Arquitetura

```
iac-aws-terraform-demo/
├── 📄 README.md
├── 🚫 .gitignore
├── ⚙️ main.tf                    # Configuração principal
├── 🔌 providers.tf               # Provedores (AWS, etc.)
├── 📝 variables.tf               # Variáveis de entrada
├── 📤 outputs.tf                 # Saídas do Terraform
├── 📋 terraform.tfvars.example   # Exemplo de variáveis
├── 📁 modules/                   # Módulos reutilizáveis
│   ├── vpc/
│   ├── ec2/
│   └── s3/
├── 🌍 environments/              # Ambientes (dev, prod)
│   ├── dev/
│   └── prod/
└── 🔄 .github/workflows/         # CI/CD Pipelines
    └── terraform.yml
```

---

## 🚀 Getting Started

### 📋 Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/) configurado
- Conta AWS com permissões adequadas

### ⚡ Instalação Rápida

```bash
# 1. Clone o repositório
git clone https://github.com/AlexRabelo/iac-aws-terraform-demo.git
cd iac-aws-terraform-demo

# 2. Configure suas variáveis
cp terraform.tfvars.example terraform.tfvars
# Edite terraform.tfvars com suas configurações

# 3. Initialize e Execute
terraform init
terraform plan
terraform apply
```

---

## 🚦 Roadmap

- [x] ✅ Estrutura base do repositório
- [x] ✅ Configurações Terraform iniciais
- [x] ✅ README estruturado com badges
- [ ] 🔄 Módulos VPC, EC2, S3
- [ ] 🔄 Workflows GitHub Actions
- [ ] 🔄 Ambientes dev/prod
- [ ] 🔄 Testes automatizados
- [ ] 🔄 Documentação detalhada

---

## 📖 Documentação

### 🔗 Links Úteis

- 📘 **Documentação Terraform**: [terraform.io/docs](https://www.terraform.io/docs)
- ☁️ **AWS Provider**: [registry.terraform.io/providers/hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- 🎯 **Guias Complementares**: [terraform-aws-docs-reference](https://github.com/AlexRabelo/terraform-aws-docs-reference)

### 📁 Estrutura dos Módulos

```hcl
# Exemplo de uso do módulo VPC
module "vpc" {
  source = "./modules/vpc"
  
  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  environment         = var.environment
}
```

---

## 🤝 Contribuindo

Contribuições são bem-vindas! Para contribuir:

1. 🍴 **Fork** o projeto
2. 🌟 **Crie** sua feature branch (`git checkout -b feature/AmazingFeature`)
3. 💾 **Commit** suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. 📤 **Push** para a branch (`git push origin feature/AmazingFeature`)
5. 🔃 **Abra** um Pull Request

---

## 📄 License

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

---

<div align="center">

**⭐ Se este projeto te ajudou, considere dar uma estrela!**

Made with ❤️ by [Alex Rabelo](https://github.com/AlexRabelo)

</div>
