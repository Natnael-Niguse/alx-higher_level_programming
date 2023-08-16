-- Select the 'name' column from the 'tv_genres' table, aliased as 'genre',
-- and count the number of shows for each genre from the 'tv_show_genres' table,
-- using an inner join based on the 'id' and 'genre_id' columns, respectively,
-- group the results by genre ID,
-- and order the results by the count of shows in descending order
SELECT name AS genre, COUNT(*) AS number_of_shows FROM tv_genres
JOIN tv_show_genres ON id=tv_show_genres.genre_id
GROUP BY tv_show_genres.genre_id
ORDER BY number_of_shows DESC;

