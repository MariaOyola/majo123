CREATE TABLE person (
    id_person SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    id_type_document INT NOT NULL,
    phone VARCHAR(12),
    email VARCHAR(80) UNIQUE,

    CONSTRAINT fk_person_type_doc 
        FOREIGN KEY (id_type_document) 
        REFERENCES type_document(id_type_document)
);