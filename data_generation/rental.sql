insert into rental(rental_date, inventory_id, customer_id, staff_id)
select current_date - (row_number() over())::int
     , inventory_id
     , customer_id
     , staff_id
  from (select i.inventory_id
             , c.customer_id
             , s.staff_id 
          from inventory i tablesample bernoulli(2) 
         cross join customer c tablesample bernoulli(2)
         cross join staff s tablesample bernoulli(2)
         order by random()
         limit 10000) s;
