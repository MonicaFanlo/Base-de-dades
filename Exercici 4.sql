SELECT tb_person.person_name
,tb_movie.movie_title
,COUNT(DISTINCT tb_movie_person.role_id) AS rols_diferents
FROM tb_movie_person 
LEFT JOIN tb_person ON tb_movie_person.person_id = tb_person.person_id
LEFT JOIN tb_movie ON tb_movie_person.movie_id = tb_movie.movie_id
GROUP BY tb_person.person_name, tb_movie.movie_title
HAVING rols_diferents >1;
