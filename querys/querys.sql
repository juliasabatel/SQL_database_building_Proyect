select title from film
where rental_rate>3.5;
---

select rental_rate from film
where rental_rate >=2;

---
select title, name from film as f
left join language as l
on f.language_id=l.language_id;

---




