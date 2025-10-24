-- Cria a tabela bronze_orders_details para armazenar os dados brutos dos detalhes dos pedidos
CREATE TABLE IF NOT EXISTS bronze_products (
    raw VARIANT,           -- JSON bruto como $1
    filename STRING,       -- Nome do arquivo
    created_at TIMESTAMP   -- Timestamp de carga
);