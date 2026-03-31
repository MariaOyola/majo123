CREATE TABLE orders (
    id_order SERIAL PRIMARY KEY,
    id_user INT NOT NULL,
    total NUMERIC(10,2),
    id_status UUID NOT NULL,

    CONSTRAINT fk_order_user 
        FOREIGN KEY (id_user) REFERENCES users(id_user),

    CONSTRAINT fk_order_status 
        FOREIGN KEY (id_status) REFERENCES status(id)
);