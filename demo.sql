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
