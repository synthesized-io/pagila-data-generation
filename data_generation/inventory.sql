insert into inventory(film_id, store_id)
select f.film_id
     , s.store_id 
  from film f
 cross join store s 
 order by random()
 limit 10000;
