CREATE TABLE IF NOT EXISTS corp.sales (
    product_id INTEGER NOT NULL,
    time_id char(20) NOT NULL,
    customer_id INTEGER NOT NULL,
    promotion_id char(20),
    store_id INTEGER NOT NULL,
    store_sales FLOAT,
    store_cost FLOAT,
    unit_sales FLOAT,
    CONSTRAINT fact_pk PRIMARY KEY (product_id, time_id, customer_id, store_id));

