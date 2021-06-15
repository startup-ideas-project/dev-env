CREATE TABLE users (
    Id uuid,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created timestamp NOT NULL,
    PRIMARY KEY (Id)
);
