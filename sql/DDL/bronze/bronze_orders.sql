-- Cria a tabela bronze_orders para armazenar os dados brutos dos pedidos
CREATE TABLE IF NOT EXISTS bronze_orders (
    raw VARIANT,           -- JSON bruto como $1
    filename STRING,       -- Nome do arquivo
    created_at TIMESTAMP   -- Timestamp de carga
);