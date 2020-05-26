USE codeup_test_db;

-- All albums in your table
SELECT * FROM albums;

-- all albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';