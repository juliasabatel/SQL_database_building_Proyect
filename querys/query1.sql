CREATE TABLE old_HDD2
SELECT f.film_id, a.actor_id, od.title, od.name, od.category_id
FROM film f
INNER JOIN old_HDD od
ON f.title = od.title
INNER JOIN actor a
ON od.name = a.name
;
SELECT * FROM old_HDD2;
alter table old_HDD
drop column title;
alter table old_HDD
drop column name;
SELECT * FROM old_HDD;


