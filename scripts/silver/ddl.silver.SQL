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
