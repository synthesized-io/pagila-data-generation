create schema faker;
create extension faker schema faker cascade;



set schema 'public';
\i /home/pagila-schema.sql

set schema 'public';
select faker.faker(array['en_US']);

\timing

\echo Generate data for "country" table ...
\i /home/data_generation/country.sql

\echo Generate data for "language" table ...
\i /home/data_generation/language.sql

\echo Generate data for "city" table ...
\i /home/data_generation/city.sql

\echo Generate data for "address" table ...
\i /home/data_generation/address.sql

\echo Generate data for "store" table ...
\i /home/data_generation/store.sql

\echo Generate data for "staff" table ...
\i /home/data_generation/staff.sql

\echo Generate data for "customer" table ...
\i /home/data_generation/customer.sql

\echo Generate data for "film" table ...
\i /home/data_generation/film.sql

\echo Generate data for "inventory" table ...
\i /home/data_generation/inventory.sql

\echo Generate data for "rental" table ...
\i /home/data_generation/rental.sql
