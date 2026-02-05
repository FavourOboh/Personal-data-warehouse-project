                 DATA DICTIONARY FOR GOLD LAYER
1. gold.dim_customers
     purpose: Stores customer details enriched with demographic and geographic data.
     columns:
--customer_key( Surrogate key uniquely identifying each customer record in the dimension table)
--customer_id( Unique numerical identifier assigned to each customer)
--customer_segment( The segment each customer alings with)
--country(The country of residence for each customer )

2.gold.dim_products
   purpose: Provides product information and attributes
   columns:
--product_category(What area the product is used in e.g electronics)
--product_name(Name of product procured)
--unit_price( Price per unit)
--order_date(Date purchased)
--order_status(Status updaate on the transaction If it was completed,canceled or returned)
--payment_method(Mode of payment e.g bank transfer,card...)

3.gold.fact_sales
    purpose: Stores transactional salees data for analytical Purposes
    columns:
--order_id(numerical identifier for each sale)
--order_date(date when order was placed)
--unit_price(price per unit)
--quantity(number of units of the product that were ordered from the line item)
--total_amount(the total monetary value of the sale of the item)
--discount_applied(the amount deducted from a product per sale)
--net_amount(final amount per product sale after discount is applied)

