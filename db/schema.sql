-- Tabela de contas
CREATE TABLE IF NOT EXISTS accounts (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  type TEXT,
  opening_balance NUMERIC(12,2) DEFAULT 0,
  notes TEXT
);

-- Tabela de categorias
CREATE TABLE IF NOT EXISTS categories (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  type TEXT,
  description TEXT,
  monthly_budget NUMERIC(12,2),
  status TEXT
);

-- Tabela de transações
CREATE TABLE IF NOT EXISTS transactions (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  date DATE NOT NULL,
  value NUMERIC(12,2) NOT NULL,
  type TEXT,
  category_id INTEGER REFERENCES categories(id),
  account_id INTEGER REFERENCES accounts(id),
  payment_method TEXT,
  description TEXT
);

-- Tabela de ativos / investimentos
CREATE TABLE IF NOT EXISTS assets (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  investment_type TEXT,
  goal TEXT,
  invested_value NUMERIC(12,2),
  current_value NUMERIC(12,2),
  notes TEXT
);

-- Tabela de aportes
CREATE TABLE IF NOT EXISTS contributions (
  id SERIAL PRIMARY KEY,
  asset_id INTEGER REFERENCES assets(id),
  transaction_id INTEGER REFERENCES transactions(id),
  value NUMERIC(12,2),
  source_account_id INTEGER REFERENCES accounts(id),
  created_at DATE
);
