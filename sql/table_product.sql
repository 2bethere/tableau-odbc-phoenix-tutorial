CREATE TABLE IF NOT EXISTS corp.product (
    product_class_id CHAR(20), 
    product_id CHAR(20)  NOT NULL, 
    brand_name VARCHAR, 
    product_name VARCHAR, 
    SKU VARCHAR, 
    SRP FLOAT, 
    gross_weight FLOAT, 
    net_weight FLOAT, 
    recyclable_package VARCHAR, 
    low_fat BOOLEAN, 
    units_per_case INTEGER, 
    cases_per_pallet INTEGER, 
    shelf_width FLOAT, 
    shelf_height FLOAT, 
    shelf_depth FLOAT,
    CONSTRAINT id_pk PRIMARY KEY (product_id));