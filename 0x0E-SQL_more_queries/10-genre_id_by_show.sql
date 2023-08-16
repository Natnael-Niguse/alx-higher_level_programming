-- Select the 'title' column from the 'tv_shows' table,
-- and the 'genre_id' column from the 'tv_show_genres' table
-- using an inner join based on the 'id' and 'show_id' columns, respectively
-- and order the results first by the 'title' column of the 'tv_shows' table
-- and then by the 'genre_id' column of the 'tv_show_genres' table
SELECT tv_shows.title, tv_show_genres.genre_id FROM tv_shows
JOIN tv_show_genres ON tv_shows.id=tv_show_genres.show_id
ORDER BY tv_shows.title, tv_show_genres.genre_id;

