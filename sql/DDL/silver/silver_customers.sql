-- Criação da tabela silver_customers
CREATE TABLE IF NOT EXISTS silver_customers (
  customer_id   STRING,
  company_name  STRING,
  contact_name  STRING,
  contact_title STRING,
  address       STRING,
  city          STRING,
  postal_code   STRING,
  country       STRING,
  phone         STRING,
  fax           STRING
);