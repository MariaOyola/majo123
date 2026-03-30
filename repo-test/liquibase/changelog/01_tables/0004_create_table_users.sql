CREATE TABLE users (
    id_user SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(100) NOT NULL,
    id_person INT NOT NULL,
    id_status UUID NOT NULL,

    CONSTRAINT fk_user_person
        FOREIGN KEY (id_person) REFERENCES person(id_person),

    CONSTRAINT fk_user_status
        FOREIGN KEY (id_status) REFERENCES status(id)
);