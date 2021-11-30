-- Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE IF NOT EXISTS rentals_may as select * FROM rental where rental_date like "2005-05%" ;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
insert into rental(rental_id, rental_date, inventory_id, customer_id,return_date, staff_id)
		values (1158,'2005-05-31 22:48:45',1450,61,'2005-05-02 18:01:45',2);

-- Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE IF NOT EXISTS rentals_june AS SELECT * FROM rental where rental_date like "2005-06%" ;

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
insert into rentals_may(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
       values(3470,'2005-06-23 22:48:45',165,61,'2005-06-25 18:01:45',2);
       
       
-- Check the number of rentals for each customer for May.
select customer_id, count(rental_id) as Rentals from rentals_may
group by customer_id
order by Rentals desc;


-- Check the number of rentals for each customer for June.
select customer_id, count(rental_id) as Rentals from rentals_june
group by customer_id
order by Rentals desc;


-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

-- Check the number of rentals for each customer for May

-- Check the number of rentals for each customer for June

-- Hint: You can store the results from the two queries in two separate dataframes.

-- Write a function that checks if customer borrowed more or less films in the month of June as compared to May.
