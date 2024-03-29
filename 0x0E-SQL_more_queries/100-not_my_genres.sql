-- Select the 'name' column from the 'tv_genres' table
-- for genres that are not associated with the TV show "DEXTER"
-- and order the results by genre name
SELECT name FROM tv_genres
WHERE tv_genres.id NOT IN (
    -- Subquery to identify genre IDs associated with the TV show "DEXTER"
    SELECT tv_genres.id FROM tv_genres
    JOIN tv_show_genres ON tv_genres.id=tv_show_genres.genre_id
    JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id
    WHERE tv_shows.title = "DEXTER"
)
ORDER BY tv_genres.name;

