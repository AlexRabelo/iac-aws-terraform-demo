# 🚀 Como acessar sua EC2 usando AWS Session Manager (SSM)

O AWS Session Manager permite acesso remoto à sua instância EC2 de forma segura e auditável, **sem depender de IP público ou SSH**.

## Pré-requisitos

- EC2 criada com **IAM Role** e **Instance Profile** com a política `AmazonSSMManagedInstanceCore` (já configurado neste repositório).
- AMI suportada (Amazon Linux ou Ubuntu* já vêm com o agente SSM instalado).

---

## Passo a Passo

### 1. Console Web AWS

1. Acesse o serviço **EC2** no console AWS.
2. No menu à esquerda, clique em **Instâncias**.
3. Selecione sua instância desejada.
4. Clique no botão **Conectar**.
5. Escolha a opção **Session Manager** e clique em **Conectar** novamente.
6. Uma janela de terminal web será aberta, permitindo comandos remotos na EC2.

---

### 2. Linha de Comando (AWS CLI)

1. Certifique-se que sua AWS CLI está configurada e atualizada.
2. Execute:

```bash
aws ssm start-session --target <ID_DA_INSTANCIA>
```

Substitua `<ID_DA_INSTANCIA>` pelo Instance ID da sua EC2.

---

## Vantagens

- **Não precisa de IP público ou portas abertas.**
- **Acesso auditável e seguro via IAM.**
- **Funciona em subnets privadas.**
- **Fácil revogação de acesso (basta remover permissões IAM).**

---

> 💡 *Dica:* Se você mover sua EC2 para uma subnet privada (sem IP público), o acesso por Session Manager continuará funcionando normalmente!

---

## Referências oficiais AWS

- [AWS Systems Manager Session Manager – Guia oficial](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html)
- [Documentação AWS – Session Manager com EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/session-manager.html)

---
