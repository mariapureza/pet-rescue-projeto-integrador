# Pet Rescue — Entrega Final

Projeto desenvolvido para o **Projeto Integrador VI-A**, do curso de **Análise e Desenvolvimento de Sistemas da Universidade Católica de Pelotas (UCPel)**.

## Integrantes

- João Vitor Milech dos Santos
- Maria Eduarda Duarte Pureza

## Sobre o projeto

O **Pet Rescue** é uma plataforma web acadêmica voltada à adoção responsável e à gestão de animais resgatados. A solução prevê uma área pública para consulta dos animais e manifestação de interesse em adoção, além de uma área administrativa autenticada para gerenciamento dos animais e das solicitações recebidas.

## Tecnologias

- HTML5
- CSS3
- JavaScript
- Node.js
- Express
- EJS
- MySQL
- mysql2
- Git e GitHub

## Estrutura

```text
PetRescue_Entrega_Final/
├── public/
│   ├── css/
│   ├── js/
│   ├── img/
│   └── index.html
├── views/
│   ├── public/
│   └── admin/
├── src/
│   ├── config/
│   ├── controllers/
│   ├── routes/
│   ├── middleware/
│   ├── repositories/
│   └── app.js
├── database/
│   ├── schema.sql
│   └── dados_demo.sql
├── tests/
│   └── plano-testes.md
├── .env.example
├── .gitignore
├── package.json
└── server.js
```

## Status atual

Esta pasta contém a **estrutura inicial da entrega final**. O protótipo público e o esquema de banco da entrega parcial foram preservados e serão evoluídos nas próximas etapas para incluir persistência real, autenticação, CRUD administrativo, gerenciamento de solicitações, validações e testes.

> As imagens atuais dos animais são temporárias e serão substituídas por imagens coerentes e padronizadas para a versão final.

## Como executar futuramente

Após a implementação das próximas etapas:

1. Instale o Node.js e o MySQL.
2. Execute `npm install`.
3. Crie o banco usando `database/schema.sql`.
4. Carregue os dados fictícios com `database/dados_demo.sql`.
5. Copie `.env.example` para `.env` e ajuste as credenciais do banco.
6. Execute `npm start`.
7. Acesse `http://localhost:3000`.

## Observação acadêmica

Os dados usados para demonstração são fictícios ou devem possuir autorização expressa de uso.
