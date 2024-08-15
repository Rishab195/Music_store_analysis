
-- Who is the most senior employee based on the job title?-- 

-- select * from employee
-- Order By levels desc limit 1

-- Which country have most invoices?--  

-- select count(*) as c, billing_country from invoice group by billing_country order by c desc 

-- select count(*) as c, billing_country from invoice group by billing_country order by c desc limit 3

-- What are the top 3 values of total invoice? 
-- select total from invoice order by total desc limit 3 

-- Which city has the best customers ?? we would like to throw a promotional music festival in the city we need the most money.
--  Write a query that returns one city that has the highest sum of invoice total return both the city name and the sum of all invoice totals?

-- select sum(total) as total_invoice, billing_city from invoice group by billing_city order by total_invoice desc limit 1

-- who is the best customer? The customer who has spent most money will be declared as 
-- the best customer. Write a query that returns the person who has spent the most money


-- SELECT  customer.customer_id, customer.first_name , customer.last_name  ,SUM(invoice.total) AS Best_customer
-- FROM customer
-- JOIN invoice ON customer.customer_id = invoice.customer_id
-- GROUP BY customer.customer_id, customer.first_name
-- ORDER BY Best_customer DESC
-- LIMIT 1;

-- Write query to return the email,first name, last name, & Genre of all Rock Music listners . Return your list ordered alphabetically by email starting with A.

-- SELECT distinct customer.customer_id, customer.first_name, customer.last_name, customer.email
-- FROM customer
-- JOIN invoice ON customer.customer_id = invoice.customer_id
-- JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
-- JOIN track ON invoice_line.track_id = track.track_id
-- Join genre on track.genre_id=genre.genre_id
-- WHERE genre.name LIKE 'Rock'
-- ORDER BY customer.email asc;


-- Lets Invite the artist who have written the  most rock music in our dataset . Write a query that writtens the artist name and total track count of the top 10 Rock bands.

-- select artist.artist_id,artist.name , count(artist.artist_id) as total_count from track
-- join album2 on track.album_id=album2.album_id
-- join artist on album2.artist_id=artist.artist_id
-- join genre on genre.genre_id=track.genre_id where genre.name Like 'Rock' group by artist.artist_id ,artist.name order by total_count desc
--  limit 10;

-- return all the track names that have the song length longer than the average length. Return name and length in milliseconds for each track. Order by the song length in descending order.

-- select name, milliseconds  from track where milliseconds > (select  avg(Milliseconds) as average_length from track ) order by milliseconds desc
-- select  avg(Milliseconds) as average_length from track