-- Select the 'name' column from the 'tv_genres' table
-- using two joins: first between 'tv_genres' and 'tv_show_genres',
-- and then between 'tv_shows' and 'tv_show_genres',
-- where the TV show's title is 'Dexter',
-- and order the results by genre name
SELECT name FROM tv_genres
JOIN tv_show_genres ON id=tv_show_genres.genre_id
JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id
WHERE tv_shows.title = 'Dexter'
ORDER BY name;

