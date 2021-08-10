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

CREATE TABLE comment_reviewers
(
    additionID uuid NOT NULL,
    commentID uuid NOT NULL,
    reviewerID uuid NOT NULL,
    reviewerEmail character(100) NOT NULL,
    CONSTRAINT comment_reviewers_pkey PRIMARY KEY (additionID),
    CONSTRAINT fk_commentID FOREIGN KEY(commentID) 
	  REFERENCES comments(commentID)
)