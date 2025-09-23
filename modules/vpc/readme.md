# 🌐 Módulo VPC

> Módulo reutilizável para criação de VPC e Subnet pública na AWS com Terraform, seguindo as melhores práticas de modularização, tagging e documentação.

---

## 📦 Recursos Criados

| Recurso         | Descrição                                             |
| --------------- | ----------------------------------------------------- |
| `aws_vpc`       | Cria uma VPC customizada com DNS ativo                |
| `aws_subnet`    | Cria uma Subnet pública associada à VPC informada     |

---

## 🔑 Variáveis de Entrada

| Variável     | Tipo       | Obrigatória | Descrição                                                            |
| ------------ | ---------- | ----------- | ---------------------------------------------------------------------|
| vpc_cidr     | string     | Sim         | CIDR block para a VPC (ex: `10.0.0.0/16`)                            |
| subnet_cidr  | string     | Sim         | CIDR block da Subnet pública (ex: `10.0.1.0/24`)                      |
| vpc_name     | string     | Sim         | Nome para a VPC (usado na tag `Name`)                                 |
| subnet_name  | string     | Sim         | Nome para a Subnet (usado na tag `Name`)                              |
| az           | string     | Sim         | Availability Zone (ex: `us-east-1a`)                                  |
| tags         | map(string)| Não         | Mapa de tags adicionais (ex: `Owner`, `Environment`, `Project`)       |

> **Dica:** Use sempre `tags` para marcar seus recursos com metadados importantes para governança e rastreabilidade (Ex: Owner, Project, Environment).

---

## 📤 Outputs

| Output      | Descrição                          |
| ----------- | ---------------------------------- |
| vpc_id      | ID da VPC criada                   |
| subnet_id   | ID da Subnet pública criada        |

---

## 🛠️ Exemplo de Uso
```
module "vpc" {
source = "../../modules/vpc"
vpc_cidr = "10.0.0.0/16"
subnet_cidr = "10.0.1.0/24"
vpc_name = "iacdemo-vpc-dev"
subnet_name = "iacdemo-public-subnet-dev"
az = "us-east-1a"
tags = {
Owner = "alexrabelo"
Environment = "dev"
Project = "iac-aws-demo"
}
}
```

---

## 📝 Observações

- O módulo faz uso do parâmetro `tags` para garantir que todos os recursos estejam adequadamente identificados no console AWS. O campo `Name` será sobrescrito com o valor das variáveis `vpc_name` e `subnet_name`, respectivamente.
- Este módulo é pensado para uso em ambientes colaborativos/produto, facilitando integração com ferramentas de auditoria, billing e governança cloud.

---

## 📚 Referências

- [Documentação Oficial do Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Exemplo de Projeto IaC no GitHub](https://github.com/AlexRabelo/iac-aws-terraform-demo)

---
