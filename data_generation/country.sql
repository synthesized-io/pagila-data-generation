insert into country(country)
select faker.unique_country()
  from generate_series(1, 20) as id;
