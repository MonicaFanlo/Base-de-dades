SELECT person_name
,person_country
,person_dob
FROM tb_person
WHERE person_dod IS NOT NULL
ORDER BY person_dob ASC
LIMIT 0, 1000


