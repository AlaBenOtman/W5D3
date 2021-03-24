
CREATE TABLE users(
    fname TEXT NOT NULL, 
    lname TEXT NOT NULL,
);

CREATE TABLE questions(
    title TEXT NOT NULL,
    body TEXT NOT NULL,

    FOREIGN KEY(title)
);

CREATE TABLE question_follows(

);