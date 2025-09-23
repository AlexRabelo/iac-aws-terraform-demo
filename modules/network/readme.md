# 🌐 Módulo NETWORK

> Módulo reutilizável para criação de Internet Gateway (IGW) e Route Table pública associada à Subnet na AWS via Terraform, seguindo boas práticas de tagging e documentação.

---

## 📦 Recursos Criados

| Recurso                         | Descrição                                              |
| ------------------------------- | ------------------------------------------------------ |
| `aws_internet_gateway`           | Cria IGW para saída da VPC                             |
| `aws_route_table`                | Cria Route Table pública associada à VPC               |
| `aws_route`                      | Adiciona rota padrão para saída à internet (0.0.0.0/0) |
| `aws_route_table_association`    | Associa Route Table à Subnet pública                   |

---

## 🔑 Variáveis de Entrada

| Variável          | Tipo        | Obrigatória | Descrição                                               |
| ----------------- | ----------- | ----------- | --------------------------------------------------------|
| vpc_id            | string      | Sim         | ID da VPC de destino do IGW e da Route Table            |
| subnet_id         | string      | Sim         | ID da Subnet pública associada à Route Table             |
| igw_name          | string      | Sim         | Nome para o recurso IGW (tag Name)                       |
| route_table_name  | string      | Sim         | Nome para Route Table pública (tag Name)                 |
| tags              | map(string) | Não         | Mapa de tags adicionais (Owner, Environment, Project)    |

> **Dica:** Use sempre o parâmetro `tags` para inserir metadados importantes para rastreabilidade e governança dos recursos.

---

## 📤 Outputs

| Output            | Descrição                                   |
| ----------------- | ------------------------------------------- |
| igw_id            | ID do Internet Gateway criado               |
| route_table_id    | ID da Route Table pública criada            |

---

## 🛠️ Exemplo de Uso

```
module "network" {
source = "../../modules/network"
vpc_id = module.vpc.vpc_id
subnet_id = module.vpc.subnet_id
igw_name = "iacdemo-igw-dev"
route_table_name = "iacdemo-public-rt-dev"
tags = {
Owner = "alexrabelo"
Environment = "dev"
Project = "iac-aws-demo"
}
}
```

---

## 📝 Observações

- Todos os recursos recebem tags via variável `tags`, garantindo boa rastreabilidade, organização e governança na AWS.
- O uso do merge nos recursos permite que o `Name` individual seja definido per-recurso sem perder as demais tags globais da stack.
- Recomenda-se sempre revisar nomes e prefixos das tags conforme o ambiente de uso (dev, prod, lab).

---

## 📚 Referências

- [Documentação Oficial do Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Exemplo de Projeto IaC no GitHub](https://github.com/AlexRabelo/iac-aws-terraform-demo)

---
