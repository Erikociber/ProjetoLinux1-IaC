# 🐧 Projeto Linux 1: IaC com Bash

## 📌 Sobre o projeto

Este projeto foi desenvolvido durante meus estudos de Linux e administração de sistemas, com o objetivo de praticar a automação de tarefas utilizando scripts Bash.

A proposta é automatizar a criação de diretórios, grupos e usuários, além de configurar permissões de acesso, aplicando conceitos fundamentais de administração Linux e controle de acesso.

O projeto faz parte da minha jornada de aprendizado em infraestrutura, redes e Cibersegurança.

## 🎯 Objetivos

- Automatizar tarefas administrativas no Linux.
- Criar diretórios para diferentes setores.
- Criar grupos e usuários automaticamente.
- Associar usuários aos respectivos grupos.
- Definir proprietários e grupos responsáveis pelos diretórios.
- Configurar permissões de acesso utilizando `chmod` e `chown`.
- Praticar a utilização do Bash para simplificar tarefas repetitivas.

## 🛠️ Tecnologias e comandos utilizados

- **Linux Ubuntu Server:** ambiente de desenvolvimento e testes.
- **Bash:** linguagem utilizada para criar o script de automação.
- **useradd:** criação de usuários.
- **groupadd:** criação de grupos.
- **mkdir:** criação de diretórios.
- **chown:** definição de proprietário e grupo dos diretórios.
- **chmod:** configuração de permissões de acesso.
- **openssl:** geração de hashes de senha no script.

## 📂 Estrutura do projeto

O script trabalha com os seguintes diretórios:

| Diretório | Finalidade |
|---|---|
| `/adm` | Arquivos do setor administrativo |
| `/ven` | Arquivos do setor de vendas |
| `/sec` | Arquivos do setor de secretariado |
| `/publico` | Diretório de acesso compartilhado |

Os usuários são organizados em grupos de acordo com seus respectivos setores: `ADM`, `VENDAS` e `SECRETARIADO`.

## 🔐 Permissões de acesso

O projeto utiliza permissões numéricas do Linux para controlar o acesso aos diretórios.

- `chmod 770`: concede leitura, escrita e execução ao proprietário e ao grupo, sem permissões para outros usuários.
- `chmod 777`: concede leitura, escrita e execução a todos os usuários.

**Observação de segurança:** a permissão `777` foi utilizada como exercício de laboratório no diretório `/publico`. Em ambientes reais, deve-se avaliar uma configuração mais restritiva, evitando que qualquer usuário possa modificar ou excluir arquivos de outros usuários.

## ▶️ Ambiente de testes

O projeto foi desenvolvido em um ambiente de laboratório utilizando Ubuntu Server.

Para executar o script em um ambiente de testes, salve o arquivo com a extensão `.sh` e utilize:

```bash
chmod +x script.sh
sudo ./script.sh
```

Substitua `script.sh` pelo nome real do arquivo.

Execute somente em uma máquina de laboratório apropriada. O script deve ser revisado antes da execução, principalmente se os diretórios, grupos ou usuários já existirem.

## 📚 Aprendizados

Durante o desenvolvimento, pratiquei:

- Administração básica de usuários e grupos no Linux.
- Gerenciamento de permissões e propriedade de diretórios.
- Automação de tarefas com Bash.
- Utilização do terminal para administrar o sistema.
- Controle de versão e publicação de projetos utilizando Git e GitHub.
- Investigação e resolução de problemas técnicos durante o desenvolvimento.

## 🚀 Próximos passos

Pretendo continuar evoluindo este projeto, aprimorando o tratamento de erros, a validação de usuários e grupos existentes e as práticas de segurança na gestão de credenciais.

## 🎯 Objetivo profissional

Estou construindo minha base técnica em Linux, redes e segurança da informação, direcionando meus estudos para Blue Team e operações de segurança (SOC).

Este projeto representa uma etapa prática da minha evolução profissional e do desenvolvimento do meu portfólio em Cibersegurança.

---

**Autor:** Eriko Lucena

**GitHub:** [@Erikociber](https://github.com/Erikociber)

**Repositório:** [ProjetoLinux1-IaC](https://github.com/Erikociber/ProjetoLinux1-IaC)

![Evidência do Script](./Screenshot%202026-10-11%20172103.png)
