USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Info';
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Albums with genre Disco' AS 'Info';
SELECT * FROM albums WHERE genre = 'Disco';

SELECT 'Albums by Whitney Houston' AS 'Info';
SELECT * FROM albums WHERE artist = 'Whitney Houston';