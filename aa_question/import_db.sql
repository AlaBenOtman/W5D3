PRAGMA foreign_keys = ON;

CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL, 
    lname TEXT NOT NULL,
);

CREATE TABLE questions(
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author_id INTEGER PRIMARY

    FOREIGN KEY(title)
);

CREATE TABLE question_follows(
    SELECT
        

);

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