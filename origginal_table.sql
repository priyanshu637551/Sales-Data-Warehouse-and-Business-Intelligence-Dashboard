CREATE TABLE original_table(
    row_id INT,
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC
);




SET datestyle = 'ISO, MDY';

COPY public.original_table(
    row_id, order_id, order_date, ship_date, ship_mode, customer_id, 
    customer_name, segment, country, city, state, postal_code, region, 
    product_id, category, sub_category, product_name, sales, 
    quantity, discount, profit
) 
FROM 'C:\Users\user\OneDrive\Desktop\pookie\sql project\End_to_End_Sales_Analysis_using_SQL_Server\Sample_Superstore.csv' 
WITH (
    FORMAT csv, 
    HEADER True, 
    DELIMITER ',', 
    QUOTE '"',
    ESCAPE '"',
    ENCODING 'WIN1252'
);


