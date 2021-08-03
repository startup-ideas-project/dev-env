CREATE TABLE users (
    Id uuid,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created timestamp NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE comments
(
    commentID uuid NOT NULL,
    creatorID uuid NOT NULL,
    startIndex integer NOT NULL,
    endingIndex integer NOT NULL,
    documentID uuid NOT NULL,
    createdAt timestamp without time zone NOT NULL,
    PRIMARY KEY (commentID)
);
