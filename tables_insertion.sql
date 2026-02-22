CREATE TABLE dim_customer (
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT
);

CREATE TABLE dim_product (
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT
);

CREATE TABLE dim_location (
    postal_code TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    region TEXT
);

CREATE TABLE dim_date (
    order_date DATE,
    year INT,
    month INT,
    day INT
);


CREATE TABLE fact_sales (
    row_id INT,
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    customer_id TEXT,
    product_id TEXT,
    postal_code TEXT,
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC
);

select * from original_table;


/*inserting*/

INSERT INTO dim_customer
SELECT DISTINCT
    customer_id,
    customer_name,
    segment
FROM original_table;

INSERT INTO dim_product
SELECT DISTINCT
    product_id,
    category,
    sub_category,
    product_name
FROM original_table;


INSERT INTO dim_location
SELECT DISTINCT
    postal_code,
    country,
    city,
    state,
    region
FROM original_table;


INSERT INTO dim_date
SELECT DISTINCT
    order_date,
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date),
    EXTRACT(DAY FROM order_date)
FROM original_table;


INSERT INTO fact_sales
SELECT
    row_id,
    order_id,
    order_date,
    ship_date,
    customer_id,
    product_id,
    postal_code,
    sales,
    quantity,
    discount,
    profit
FROM original_table;

SELECT COUNT(*) FROM fact_sales;
SELECT COUNT(*) FROM dim_customer;
SELECT COUNT(*) FROM dim_product;

ALTER TABLE dim_date
ADD PRIMARY KEY (order_date);



CREATE TABLE dim_product (
    product_key SERIAL PRIMARY KEY,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT
);

INSERT INTO dim_product (product_id, category, sub_category, product_name)
SELECT DISTINCT
    product_id,
    category,
    sub_category,
    product_name
FROM original_table;

DROP TABLE dim_location;

CREATE TABLE dim_location (
    location_key SERIAL PRIMARY KEY,
    postal_code TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    region TEXT
);

INSERT INTO dim_location (postal_code, country, city, state, region)
SELECT DISTINCT
    postal_code,
    country,
    city,
    state,
    region
FROM original_table;


DROP TABLE dim_customer;

CREATE TABLE dim_customer (
    customer_key SERIAL PRIMARY KEY,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT
);

INSERT INTO dim_customer (customer_id, customer_name, segment)
SELECT DISTINCT
    customer_id,
    customer_name,
    segment
FROM original_table;

















