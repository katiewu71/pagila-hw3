/*
 * Compute the country with the most customers in it. 
 */

SELECT country
FROM customer
LEFT JOIN address on address.address_id = customer.address_id
LEFT JOIN city on city.city_id = city.city_id
LEFT JOIN country on country.country_id = city.country_id 
GROUP BY country
ORDER BY count(country) desc
LIMIT 1;
