CREATE TABLE product (
    id_product SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price NUMERIC(8,2),
    id_category INT NOT NULL,
    id_status UUID NOT NULL,

    CONSTRAINT fk_product_category 
        FOREIGN KEY (id_category) REFERENCES category(id_category),

    CONSTRAINT fk_product_status 
        FOREIGN KEY (id_status) REFERENCES status(id)
);