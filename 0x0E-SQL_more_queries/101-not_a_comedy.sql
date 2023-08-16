-- Select the 'title' column from the 'tv_shows' table
-- for shows that are not associated with the "Comedy" genre
-- and order the results by show title
SELECT tv_shows.title FROM tv_shows
WHERE tv_shows.id NOT IN (
    -- Subquery to identify show IDs associated with the "Comedy" genre
    SELECT tv_shows.id FROM tv_shows
    JOIN tv_show_genres ON tv_shows.id=tv_show_genres.show_id
    JOIN tv_genres ON tv_genres.id=tv_show_genres.genre_id
    WHERE tv_genres.name = "Comedy"
)
ORDER BY tv_shows.title;

