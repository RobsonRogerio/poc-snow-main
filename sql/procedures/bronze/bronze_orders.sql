-- Cria o procedimento para carregar dados na tabela bronze_orders a partir do stage de orders
CREATE OR REPLACE PROCEDURE load_bronze_orders()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    TRUNCATE TABLE BRONZE_ORDERS;

    INSERT INTO bronze_orders
SELECT 
    CAST($1 AS VARIANT) as raw,                   -- ← CAST para VARIANT
    metadata$filename as filename,                     
    CURRENT_TIMESTAMP() as created_at                  
FROM @FORMACAO.PUBLIC.NORTH/orders (FILE_FORMAT => 'PARQUET_FORMAT');
    RETURN 'Load Bronze Customers table successfully';
END;
$$;