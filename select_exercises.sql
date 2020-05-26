USE codeup_test_db;

SELECT 'Albums by Pink Floyd' AS 'Info';
SELECT DISTINCT name FROM albums WHERE artist = 'Pink Floyd';


SELECT 'Albums release date by Sgt. Pepper' AS 'Info';
SELECT DISTINCT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Genre for the album name Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released between 1990 and 1999';
SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT AS 'Albums where sales < 20'
SELECT * FROM albums WHERE sales < 20;

-- PROGRESSIVE ROCK does not show because you need another keyword
SELECT 'Albums with genre ROCK' AS 'INFO';
SELECT * FROM albums WHERE genre = 'Rock';