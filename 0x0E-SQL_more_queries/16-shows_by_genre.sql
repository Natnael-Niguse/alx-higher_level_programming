-- Select the 'title' column from the 'tv_shows' table,
-- and the 'name' column from the 'tv_genres' table,
-- using two left joins: first between 'tv_shows' and 'tv_show_genres',
-- and then between 'tv_show_genres' and 'tv_genres',
-- and order the results first by the 'title' column of the 'tv_shows' table,
-- and then by the 'name' column of the 'tv_genres' table
SELECT title, tv_genres.name FROM tv_shows
LEFT JOIN tv_show_genres ON id=tv_show_genres.show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
ORDER BY title, tv_genres.name;

