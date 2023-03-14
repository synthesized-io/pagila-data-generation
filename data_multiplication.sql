select с.country_id
     , cnt.country 
     , с.cities_per_country_count
     , floor(cities_per_country_count / cities_count * 100) as percent
  from (select country_id
             , count(1) as cities_per_country_count
             , sum(count(1)) over () as cities_count
          from city
         group by country_id) с
  join country cnt on cnt.country_id = с.country_id
 order by cities_per_country_count desc
 limit 5;


insert into city(city, country_id)
select unnest(array(select faker.unique_city()
                      from generate_series(1, c.cities_count*3) as id)) as city
     , country_id
  from (select country_id
             , count(1) as cities_count
          from city
         group by country_id
         order by country_id) c;
