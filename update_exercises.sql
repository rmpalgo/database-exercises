USE codeup_test_db;

SELECT 'All albums' AS 'Info';
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT sales FROM albums;

SELECT 'All albums released before 1980' AS 'Info';
SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 1800
WHERE release_date < 1980;

SELECT 'All albums changed to 1800' AS 'Info';
SELECT release_date FROM albums
WHERE release_date < 1800;

-- All albums by Michael Jackson
SELECT 'All albums by Michael Jackson' AS 'Info';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'All albums by Michael Jackson changed name to Peter Jackson' AS 'Info';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';