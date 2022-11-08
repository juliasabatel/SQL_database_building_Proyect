# 1- Ranking of best comedy  movies

select distinct f.title as film, c.name as category, f.rental_rate
from film as f
inner join old_HDD as od
on f.film_id = od.film_id
inner join category as c
on od.category_id = c.category_id
where c.name = 'comedy' 
order by rental_rate desc;

---

#2-Top 3 best customers

SELECT customer_id, count(f.title) as nº_films
from rental as r
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id = f.film_id
group by customer_id
order by count(f.title) desc limit 3;

#3films with more than 3.5 as puntuation
select title from film
where rental_rate>3.5;

---
#4logest films
select title, length
from film 
order by length desc 
limit 5;
---
#5films with less than 2 or equal as puntuation

select rental_rate from film
where rental_rate >=2;

---
#6 two actors same called
select name, count(name) as repe
from actor
group by name
order by repe desc
limit 1;
---
#7 films with behind the scenes
select title, special_features
from film
where special_features like '%Behind the Scenes%' ;

---
#8 TOP 10 longest movies
select title, length
from film 
order by length desc 
limit 10;

---
#9 esta en la otra pestaña de queries para crear la tabla temporal

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



---

#10  Use subqueries to display all actors who appear in the film `Alone Trip`.

  SELECT name
  FROM actor
  WHERE actor_id IN
  (SELECT actor_id
  FROM film
  WHERE film_id IN
  (SELECT film_id
  FROM film
  WHERE title = 'Alone Trip'));



