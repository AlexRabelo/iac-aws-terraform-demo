# 🚀 Infrastructure as Code - AWS Terraform Demo

<p align="center">
  <a href="https://github.com/AlexRabelo/iac-aws-terraform-demo/commits/main">
    <img src="https://img.shields.io/github/last-commit/AlexRabelo/iac-aws-terraform-demo?style=flat-square" alt="Last update">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/github/license/AlexRabelo/iac-aws-terraform-demo?style=flat-square" alt="License">
  </a>
  <a href="https://www.terraform.io/">
    <img src="https://img.shields.io/badge/Terraform-1.0+-623CE4?style=flat-square&logo=terraform&logoColor=white" alt="Terraform">
  </a>
  <a href="https://aws.amazon.com/">
    <img src="https://img.shields.io/badge/AWS-Cloud-FF9900?style=flat-square&logo=amazon-aws&logoColor=white" alt="AWS">
  </a>
  <a href="https://github.com/AlexRabelo/iac-aws-terraform-demo/issues">
    <img src="https://img.shields.io/github/issues/AlexRabelo/iac-aws-terraform-demo?style=flat-square" alt="Issues">
  </a>
  <a href="https://github.com/AlexRabelo/iac-aws-terraform-demo/stargazers">
    <img src="https://img.shields.io/github/stars/AlexRabelo/iac-aws-terraform-demo?style=flat-square" alt="Stars">
  </a>
  <a href="https://github.com/features/actions">
    <img src="https://img.shields.io/badge/CI/CD-GitHub_Actions-2088FF?style=flat-square&logo=github-actions&logoColor=white" alt="GitHub Actions">
  </a>
</p>


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
├── ⚙️ main.tf
├── 🔌 providers.tf
├── 📝 variables.tf
├── 📝 outputs.tf
├── terraform.tfvars.example
├── /modules/
├── /environments/
├── /.github/workflows/

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

**⭐ Se este projeto te ajudou, considere dar uma estrela!**

Made with ❤️ by [Alex Rabelo](https://github.com/AlexRabelo)

---

## 👤 Sobre o Autor

[![Alex Rabelo - Linkedin](https://img.shields.io/badge/LinkedIn-Perfil-blue?logo=linkedin&logoColor=white&style=flat-square)](https://www.linkedin.com/in/alexrabelo/)

**Alex Rabelo**  
Especialista em infraestrutura de TI e Cloud (AWS, Azure) com forte atuação em automação, DevOps, provisionamento via Terraform, ambientes Linux e segurança.  
Experiência prática em ambientes críticos de seguro, bancos e cloud corporativa.  
Atua disseminando cultura DevOps, arquitetura de soluções, treinamento linux e projetos de infraestrutura como código.
Estudante do Curso de Graduação de Ciência de Dados - MACKENZIE

> Fique à vontade para se conectar e trocar ideias sobre Cloud, DevOps, Terraform e carreira em tecnologia!
