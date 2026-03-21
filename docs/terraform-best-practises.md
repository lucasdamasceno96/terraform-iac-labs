# 📖 Guia: Terraform Best Practices (GCP-Terraform-Ascend)

Este documento define a estrutura padrão, a ordem de criação de arquivos e o ciclo de vida dos comandos para garantir consistência e segurança.

## 🏗️ 1. Estrutura de Arquivos e Ordem de Criação

Siga esta ordem exata ao iniciar qualquer laboratório ou projeto real. Isso ajuda a organizar seu pensamento logico:

| Ordem  | Arquivo            | Finalidade (O "Porquê")                                                                                                                 |
| :----- | :----------------- | :-------------------------------------------------------------------------------------------------------------------------------------- |
| **1º** | `provider.tf`      | **Identidade:** Define quem é o provedor (Google) e onde os recursos moram (Project/Region). Sem isso, nada funciona.                   |
| **2º** | `variables.tf`     | **Contrato:** Define quais dados o seu código _pode_ receber. É o esqueleto de entrada.                                                 |
| **3º** | `terraform.tfvars` | **Dados Reais:** Onde você coloca os valores reais (IDs de projeto, nomes). **Dica:** Nunca versione este arquivo se contiver segredos. |
| **4º** | `main.tf`          | **Lógica:** Aqui você escreve os recursos (`resource`) e blocos dinâmicos. Ele consome as variáveis dos passos anteriores.              |
| **5º** | `outputs.tf`       | **Visibilidade:** Define o que você quer ver na tela após o deploy (URLs, IPs, IDs gerados).                                            |

---

## 🔄 2. O Ciclo de Vida dos Comandos (Workflow)

Como um especialista, você não pula etapas. Este é o fluxo "Bulletproof" (À prova de balas):

1.  **`terraform init`**
    - _Quando:_ Sempre que criar um diretório novo ou adicionar um módulo.
    - _O que faz:_ Baixa os plugins do GCP e inicializa o backend (GCS).

2.  **`terraform fmt`** (Passo de Senior ✨)
    - _O que faz:_ Formata seu código automaticamente para os padrões da HashiCorp. Deixa o código limpo.

3.  **`terraform validate`**
    - _O que faz:_ Verifica se a sintaxe está correta sem precisar bater na API do Google. Economiza tempo.

4.  **`terraform plan`**
    - _O que faz:_ Gera a "previsão do tempo". **Leia o output.** Verifique se o `project_id` e os nomes estão corretos antes de confirmar.

5.  **`terraform apply`**
    - _O que faz:_ Cria a infraestrutura real. Use `--auto-approve` apenas em automações de CI/CD, nunca manualmente em produção.

6.  **`terraform destroy`**
    - _O que faz:_ Remove tudo. Essencial em Labs para não gastar créditos no GCP.

---

## 🔐 3. Regras de Ouro (Senior Practices)

- **Naming Convention:** Use sempre `kebab-case` (letras minúsculas e hífens) para recursos no GCP.
- **Variable Descriptions:** Sempre preencha o campo `description` em suas variáveis. Documentação é código.
- **No Hardcoding:** Se você digitar o ID do projeto dentro do `main.tf`, você falhou como Senior. Use variáveis.
- **Remote State:** Sempre use o **GCS Backend** (configuramos no Módulo 02) para que seu estado não fique apenas na sua máquina.

---
