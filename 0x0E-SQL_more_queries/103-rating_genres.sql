-- Select the name of TV genres and their corresponding rating sum
-- by joining the 'tv_genres', 'tv_show_genres', and 'tv_show_ratings' tables
-- on the 'id', 'genre_id', and 'show_id' columns
-- Group the results by genre name and calculate the sum of ratings for each genre
-- Order the results in descending order based on the rating sum

SELECT tv_genres.name, SUM(tv_show_ratings.rating) AS rating_sum
FROM tv_genres
JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
JOIN tv_show_ratings ON tv_show_genres.show_id = tv_show_ratings.show_id
GROUP BY tv_genres.name
ORDER BY rating_sum DESC;

