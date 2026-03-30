CREATE TABLE type_document (
    id_type_document SERIAL PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(60) NOT NULL
);