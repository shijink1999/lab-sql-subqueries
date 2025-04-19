use sakila;
select count(*) as copies_count from inventory where film_id=(select film_id from film where title ='Hunchback Imposiible');
select title,length from film 
where length > (select avg(length) from film)
order by length desc;
select a.actor_id,a.first_name,a.last_name from actor a 
where a.actor_id in (SELECT fa.actor_id from film_actor fa where fa.film_id = (select film_id from film where title ='Alone Trip'))
order by a.last_name;
