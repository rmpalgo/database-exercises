USE codeup_test_db;

DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS authors;



CREATE TABLE IF NOT EXISTS authors (
      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
      first_name varchar(255) NOT NULL,
      last_name varchar(255) NOT NULL,
      UNIQUE(first_name, last_name),
      primary key (id)
);

CREATE TABLE IF NOT EXISTS quotes (
          id INT NOT NULL AUTO_INCREMENT,
          author_id int UNSIGNED NOT NULL,
          content VARCHAR(240) NOT NULL UNIQUE,
          PRIMARY KEY (id),
          foreign key (author_id) references authors(id)
);

-- Exercise 1
CREATE DATABASE IF NOT EXISTS join_test_db;
USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
VALUES ('Ron Pal', 'ronpal@google.com', 2),
       ('John Lee', 'johnlee@google.com', 2),
       ('Jason Fang', 'jasonfang@google.com', 2),
       ('Reid James', 'reidjames@google.com', null);

SELECT * FROM users;
SELECT * FROM roles;

SELECT * FROM
    users AS u
        join roles AS r ON u.role_id = r.id;

SELECT * FROM
    users AS u
        LEFT JOIN roles AS r
                  ON u.role_id = r.id;

SELECT * FROM
    users AS u
        RIGHT JOIN roles AS r
                   ON u.role_id = r.id;

SELECT r.name, count(u.role_id) AS count FROM
    users AS u
        RIGHT JOIN roles AS r ON u.role_id = r.id
GROUP BY r.name;

