ALTER TABLE fact_sales
ADD COLUMN customer_key INT;

ALTER TABLE fact_sales
ADD COLUMN product_key INT;

ALTER TABLE fact_sales
ADD COLUMN location_key INT;

UPDATE fact_sales f
SET customer_key = d.customer_key
FROM dim_customer d
WHERE f.customer_id = d.customer_id;

UPDATE fact_sales f
SET product_key = d.product_key
FROM dim_product d
WHERE f.product_id = d.product_id;

UPDATE fact_sales f
SET location_key = d.location_key
FROM dim_location d
WHERE f.postal_code = d.postal_code;


SELECT COUNT(*) 
FROM fact_sales
WHERE customer_key IS NULL;



SELECT COUNT(*) 
FROM fact_sales
WHERE product_key IS NULL;


SELECT COUNT(*) 
FROM fact_sales
WHERE location_key IS NULL;

ALTER TABLE fact_sales
DROP COLUMN customer_id,
DROP COLUMN product_id,
DROP COLUMN postal_code;



ALTER TABLE fact_sales
ADD FOREIGN KEY (customer_key)
REFERENCES dim_customer(customer_key);



ALTER TABLE fact_sales
ADD FOREIGN KEY (product_key)
REFERENCES dim_product(product_key);


ALTER TABLE fact_sales
ADD FOREIGN KEY (location_key)
REFERENCES dim_location(location_key);


ALTER TABLE fact_sales
ADD FOREIGN KEY (order_date)
REFERENCES dim_date(order_date);




