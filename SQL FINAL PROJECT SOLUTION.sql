SELECT g.genre, AVG(n.IMDBSCORE) AS average_imdb_score
FROM netflix n
JOIN Genre g ON n.genreid = g.genreid
GROUP BY g.genre;

SELECT g.genre, AVG(n.IMDBSCORE) AS average_imdb_score
FROM netflix n
JOIN Genre g ON n.genreid = g.genreid
GROUP BY g.genre
HAVING AVG(n.IMDBSCORE)>7.5;

Select TitlE,IMDBScore
FROM netflix
ORDER BY IMDBSCORE DESC;

Select * From netflix
ORDER BY Runtime Desc
LIMIT 10;

Select n.title,g.genre AS genreoftitle
From netflix n
JOIN genre g ON n.genreid=g.genreid;

Select n.title,g.genre,n.IMDBSCORE,
RANK() OVER (PARTITION BY g.genre ORDER BY n.IMDBSCORE)
FROM Netflix n
JOIN Genre g on n.genreid=g.genreid;

Select title,IMDBScore
From Netflix
where IMDBSCORE> (select avg(IMDBScore) FROM netflix);

SELECT g.genre,count(n.title) AS  Num_of_titles
FROM netflix n
JOIN Genre g on n.genreid=g.genreid
GROUP BY g.genre;

SELECT g.genre,count(n.title) AS  Num_of_high_score_titles
FROM netflix n
JOIN Genre g on n.genreid=g.genreid
where n.IMDBSCORE>8
GROUP BY g.genre
HAVING COUNT(n.Title)>5;

Select g.genre, AVG(n.IMDBSCORE) AS average_imdb_score, COUNT(n.title) AS num_of_titles
From netflix n
JOIN Genre g on n.genreid=g.genreid
group  by g.genre
ORDER BY AVERAGE_IMDB_SCORE DESC
LIMIT 3;


