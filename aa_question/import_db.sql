DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS users;

PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL, 
    lname TEXT NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author_id INTEGER NOT NULL,

    FOREIGN KEY (author_id) REFERENCES users(id)
);

INSERT INTO 
    users(fname, lname)

VALUES 
("Wei","Zheng"),("Ala","Benotman"),("App","Academy");

INSERT INTO 
    questions(title, body, author_id)

VALUES 
("Wei Question","WEI WEI WEI",(SELECT id FROM users WHERE fname = "Wei")),
("Ala Question","ALA ALA ALA",(SELECT id FROM users WHERE fname = "Ala")),
("App Question","APP APP APP",(SELECT id FROM users WHERE fname = "App"));





-- CREATE TABLE question_follows(
--     SELECT
        

-- );

-- sqlite> SELECT * FROM questions;
-- 1|Ned Question|NED NED NED|1
-- 2|Kush Question|KUSH KUSH KUSH|2
-- 3|Earl Question|MEOW MEOW MEOW|3
-- sqlite> .headers on
-- sqlite> .mode column
-- sqlite> SELECT * FROM questions;
-- id          title         body         author_id
-- ----------  ------------  -----------  ----------
-- 1           Ned Question  NED NED NED  1
-- 2           Kush Questio  KUSH KUSH K  2
-- 3           Earl Questio  MEOW MEOW M  3