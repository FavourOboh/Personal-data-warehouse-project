----------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
       In this stage, i split the larger cleaned table from the silver layer, 
  dividing them using STAR shema(dimensions or facts).
---------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


CREATE OR ALTER VIEW gold.fact_sales AS
SELECT
order_id,
order_date,
unit_price,
quantity,
total_amount,
discount_applied,
net_amount
FROM silver.ecm_ecommerce_dataset

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

CREATE OR ALTER VIEW gold.dim_products AS
SELECT
ROW_NUMBER() OVER(ORDER BY product_name) AS product_key,
product_category,
product_name,
unit_price,
order_date,
order_status,
payment_method
FROM silver.ecm_ecommerce_dataset

---------------------------------------------------------------------------------
--------------------------------------------------------------------------------

  CREATE VIEW gold.dim_customers AS
SELECT
    ROW_NUMBER() OVER (ORDER BY customer_id) customer_key,
	customer_id,
	customer_segment,
	country
FROM silver.ecm_ecommerce_dataset
