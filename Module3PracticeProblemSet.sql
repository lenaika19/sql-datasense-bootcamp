#---MODULE3

use sakila;
show tables;

-------------------------------------------------------------------------------------------------------------------
---- SECTION A 
#1. Count the total number of customers in the database.
	select 
		count(*)
    from customer;

#2. Find the total, average, minimum, and maximum payment amount. Round to 2 decimals. 
	select 
		round(sum(amount),2) as total,
        round(avg(amount),2) as average,
        round(min(amount),2) as minimum,
        round(max(amount),2) as maximium
    from payment;
    
#3. How many distinct ratings exist in the film table? 
	select 
		count(distinct(rating)) as distinct_rating_count
    from film;
    
#4. How many rentals have been returned vs not returned? Use COUNT(*) and COUNT(return_date). 
	select 
		count(return_date) 
    from rental
    where ;