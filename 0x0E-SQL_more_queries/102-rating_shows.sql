-- Select the title of TV shows and their corresponding rating sum
-- by joining the 'tv_shows' and 'tv_show_ratings' tables on the 'id' and 'show_id' columns
-- Group the results by show title and calculate the sum of ratings for each show
-- Order the results in descending order based on the rating sum

SELECT tv_shows.title, SUM(rating) AS rating_sum
FROM tv_shows
JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.show_id
GROUP BY tv_shows.title
ORDER BY rating_sum DESC;

