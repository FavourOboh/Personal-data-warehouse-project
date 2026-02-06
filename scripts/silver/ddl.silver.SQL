=========================================================================

=========================================================================

CREATE TABLE silver.ecm_ecommerce_dataset(
	order_id INT,
	order_date DATETIME,
	customer_id INT,
	customer_segment NVARCHAR(50),
	country NVARCHAR(50),
	product_category NVARCHAR(50),
	product_name NVARCHAR(50),
	unit_price DECIMAL(10,2),
	quantity INT,
	total_amount DECIMAL(10,2) ,
	discount_applied INT,
	net_amount DECIMAL(10,2),
	payment_method NVARCHAR(50),
	order_status NVARCHAR(50),
	mfw_create_date DATETIME2 DEFAULT GETDATE()

);
============================================================================================================
Semantic inconsistencies existed between product_name and product_category due to synthetic data generation.
Product categories were corrected using a reference mapping table.
Transactional measures (unit_price, quantity, total_amount) were preserved to maintain historical accuracy.
============================================================================================================

---create table first

CREATE TABLE product_category_map(
product_name NVARCHAR(50),
correct_category NVARCHAR(50)

);
---Inserting the correct mapping

INSERT INTO product_category_map VALUES
('Skincare Kit', 'Beauty'),
('Smartphone', 'Electronics'),
('Laptop', 'Electronics'),
('Treadmill', 'Sports'),
('Blender', 'Home/Living'),
('Sneakers', 'Fashion');


---Updating the table with the correct business logic
UPDATE f
SET f.product_category = m.correct_category
FROM silver.ecm_ecommerce_dataset f
JOIN product_category_map m
    ON f.product_name = m.product_name;




