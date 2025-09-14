# 🚀 iac-aws-terraform-demo

[![Last update](https://img.shields.io/github/last-commit/AlexRabelo/iac-aws-terraform-demo?style=flat-square)](https://github.com/AlexRabelo/iac-aws-terraform-demo/commits/main)
[![License](https://img.shields.io/github/license/AlexRabelo/iac-aws-terraform-demo?style=flat-square)](LICENSE)
[![Made with Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?logo=terraform&logoColor=white&style=flat-square)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?logo=amazon-aws&logoColor=white&style=flat-square)](https://aws.amazon.com/)

> **Exemplo prático de infraestrutura como código (IaC) utilizando Terraform para provisionamento de recursos AWS.**  
> Inclui VPC, EC2, S3, pipelines CI/CD, organização modular e boas práticas de DevOps.

---

## 📚 Visão Geral

Projeto demonstrativo para:
- Experimentação de recursos AWS via Terraform
- Exercício de organização modular
- Demonstração de automação CI/CD com GitHub Actions

---

## ⚙️ Estrutura Recomendada

```
iac-aws-terraform-demo/
├── README.md
├── .gitignore
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── /modules/
├── /environments/
├── /.github/workflows/

```

---

## 🚦 Próximos passos

- [ ] Adicionar README estruturado e badges
- [ ] Criar arquivos principais (`main.tf`, etc.)
- [ ] Iniciar estrutura de módulos (`/modules/vpc`, etc.)
- [ ] Criar exemplo de workflow CI/CD

---

## 📄 Referência complementar

Consulte também o repositório de apoio com documentação, exemplos e guias detalhados:  
👉 [terraform-aws-docs-reference](https://github.com/AlexRabelo/terraform-aws-docs-reference)

---

## 🟢 License

MIT

---