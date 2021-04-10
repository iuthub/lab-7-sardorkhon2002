1) SELECT * FROM 'movies' WHERE year = 1995
2) SELECT COUNT(*) FROM `roles` WHERE movie_id in(SELECT id FROM movies WHERE name="Lost in Translation")
3) SELECT first_name,last_name FROM roles A LEFT JOIN actors B ON A.actor_id = B.id
4) SELECT first_name,last_name FROM directors WHERE directors.id in (SELECT director_id FROM movies_directors WHERE movies_directors.movie_id in (SELECT id FROM movies WHERE name="Fight Club"))
5) SELECT COUNT(*) from movies_directors where director_id in (SELECT id FROM directors WHERE first_name="Clint" AND last_name="Eastwood")
6) SELECT name FROM movies WHERE id in (SELECT movie_id from movies_directors where director_id in (SELECT id FROM directors WHERE first_name="Clint" AND last_name="Eastwood"))
7) SELECT first_name, last_name from directors where id in(SELECT director_id FROM directors_genres WHERE genre="Horror")
8) SELECT first_name, last_name FROM actors where id IN(SELECT actor_id from roles where movie_id in(SELECT movie_id FROM movies_directors where director_id in(SELECT id FROM directors where first_name="Christopher" and last_name="Nolan")))