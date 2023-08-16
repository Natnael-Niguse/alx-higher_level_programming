-- Select the 'title' column from the 'tv_shows' table,
-- and the 'genre_id' column from the 'tv_show_genres' table
-- using a left join based on the 'id' and 'show_id' columns, respectively
-- filter the results to include only rows where 'show_id' is NULL
-- and order the results first by the 'title' column of the 'tv_shows' table
-- and then by the 'genre_id' column of the 'tv_show_genres' table
SELECT title, tv_show_genres.genre_id FROM tv_shows
LEFT JOIN tv_show_genres ON id=tv_show_genres.show_id
WHERE tv_show_genres.show_id IS NULL
ORDER BY title, tv_show_genres.genre_id;

