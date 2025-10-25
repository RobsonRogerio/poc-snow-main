-- Task 1
CREATE OR REPLACE TASK task_load_gold_fact_orders
  WAREHOUSE = COMPUTE_WH
  AFTER task_load_silver_products
AS
  CALL load_gold_fact_orders();

ALTER TASK task_load_gold_fact_orders RESUME;