-- Get the directors name from rotten tomatoes db

SELECT i.imdb_id,i.title, i.year, r.director
FROM public."IMDB" AS i, public."Rotten_Tomatoes" AS r
WHERE i.query_title = r.query_title;

-- Get imdb rating vs number of votes
SELECT i.title, i.votes, o.imdb_id, o.imdb_rating 
FROM public."IMDB" AS i, public."OMDB" AS o
WHERE i.imdb_id = o.imdb_id

-- Get IMDB and rotten tomatoes score

SELECT i.title, o.imdb_id, o.imdb_rating , o.rotten_rating
FROM public."IMDB" AS i, public."OMDB" AS o
WHERE i.imdb_id = o.imdb_id
