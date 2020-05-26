USE codeup_test_db;

-- Output the Title of album by Pink Floyd;
SELECT DISTINCT name FROM albums WHERE artist = 'Pink Floyd';

-- Output the year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT DISTINCT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- Output the genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Albums that were released in 1990s
SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;

-- Albums that had less than 20 certified sales
SELECT * FROM albums WHERE sales < 20;

-- Albums with genre of ROCK will show, HARD ROCK | PROGRESSIVE ROCK does not show because you need another keyword
SELECT * FROM albums WHERE genre = 'Rock';