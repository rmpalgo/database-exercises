USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL UNIQUE,
    release_date INT NOT NULL,
    sales DECIMAL(6, 3) NOT NULL,
    genre VARCHAR(50),
    PRIMARY KEY(id)
);