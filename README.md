# Controle Financeiro

Este repositório contém um MVP de uma aplicação de controle financeiro utilizando **React**, **TypeScript**, **Tailwind CSS** e **Supabase** como backend.

## Estrutura do projeto

- `frontend/` – aplicação web criada com Vite.
- `db/schema.sql` – definição das tabelas PostgreSQL.
- `db/seed.sql` – dados de exemplo para popular o banco.

## Configurando o banco de dados

1. Crie um projeto no [Supabase](https://supabase.com) e copie a URL e a chave anônima (anon key).
2. No painel do Supabase, abra o SQL editor e execute o conteúdo de `db/schema.sql` para criar as tabelas.
3. Opcionalmente, execute `db/seed.sql` para carregar alguns dados iniciais.

## Rodando o frontend

Dentro da pasta `frontend` é necessário instalar as dependências (Node 18+):

```bash
npm install
```

Crie um arquivo `.env` na pasta `frontend` com as seguintes variáveis:

```bash
VITE_SUPABASE_URL=<sua-url>
VITE_SUPABASE_ANON_KEY=<sua-anon-key>
```

Depois execute o servidor de desenvolvimento:

```bash
npm run dev
```

A aplicação ficará disponível em `http://localhost:5173`.

## Funcionalidades

- Listagem de transações armazenadas no Supabase.
- Exemplo de estrutura de banco baseada nos CSVs fornecidos.

Este MVP serve como ponto de partida para evoluir a aplicação conforme as necessidades do projeto.
