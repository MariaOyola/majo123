CREATE TABLE category (
    id_category SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    id_status UUID NOT NULL,

    CONSTRAINT fk_category_status
        FOREIGN KEY (id_status) REFERENCES status(id)
);