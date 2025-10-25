-- Cria a procedure para carregar dados na tabela BRONZE_ORDERS
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
FROM @FORMACAO.PUBLIC.NORTH/orders/ (FILE_FORMAT => FORMACAO.PUBLIC.PARQUET_FORMAT);
    RETURN 'Load Bronze Orders table successfully';
END;
$$;