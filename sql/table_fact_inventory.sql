CREATE TABLE IF NOT EXISTS corp.fact_inventory (
    product_id INTEGER NOT NULL,
    time_id char(20) NOT NULL,
    warehouse_id char(20) NOT NULL,
    store_id INTEGER NOT NULL,
    units_ordered INTEGER,
    units_shipped INTEGER,
    warehouse_sales FLOAT,
    warehouse_cost FLOAT,
    supply_time INTEGER,
    store_invoice FLOAT,
    CONSTRAINT fact_pk PRIMARY KEY (product_id, time_id, warehouse_id, store_id));


