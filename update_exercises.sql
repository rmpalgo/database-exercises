USE codeup_test_db;

-- All albums in your table
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT sales FROM albums;

-- all albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
SELECT release_date FROM albums WHERE release_date = 1800;

-- All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';