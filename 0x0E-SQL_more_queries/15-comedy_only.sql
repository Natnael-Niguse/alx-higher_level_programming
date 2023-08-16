-- Select the 'title' column from the 'tv_shows' table
-- using two joins: first between 'tv_shows' and 'tv_show_genres',
-- and then between 'tv_genres' and 'tv_show_genres',
-- where the genre name is 'Comedy',
-- and order the results by show title
SELECT title FROM tv_shows
JOIN tv_show_genres ON id=tv_show_genres.show_id
JOIN tv_genres ON tv_genres.id=tv_show_genres.genre_id
WHERE tv_genres.name = 'Comedy'
ORDER BY title;

