INSERT INTO accounts (name, type, opening_balance, notes) VALUES
  ('Inter', 'Conta corrente', 85.76, 'Conta corrente com PIX no número de telefone.'),
  ('Caixa', 'Conta Poupança', 120.00, NULL),
  ('Pagbank', 'Conta corrente', 0, NULL);

INSERT INTO categories (name, type, description, monthly_budget, status) VALUES
  ('Skin Care', 'Variável', 'Produtos para cuidados com a pele', 200, 'Dentro do orçamento'),
  ('Aporte em renda variável', 'Fixo', 'Aporte para fundos de investimento e ações', 150, 'Dentro do orçamento');

INSERT INTO transactions (title, date, value, type, category_id, account_id, payment_method, description) VALUES
  ('FUNDO IMOBILIÁRIO', '2025-06-11', 150.00, 'Saída', 2, 1, 'Débito', NULL),
  ('CDB LIQUIDEZ DIÁRIA', '2025-06-11', 150.00, 'Saída', 2, 3, 'Débito', NULL),
  ('Carrinho drogasil', '2025-06-11', 185.67, 'Saída', 1, 1, 'PIX', NULL);

INSERT INTO assets (name, investment_type, goal, invested_value, current_value, notes) VALUES
  ('CDB LIQUIDEZ DIÁRIA PAGBANK', 'Renda fixa', 'Reserva de emergência', 150, 0, NULL),
  ('MXRF11 – Maxi Renda FII', 'Fundo', 'Dividendos', 150, 0, NULL);

INSERT INTO contributions (asset_id, transaction_id, value, source_account_id, created_at) VALUES
  (1, 2, 150, 1, '2025-06-11'),
  (2, 1, 150, 1, '2025-06-11');
