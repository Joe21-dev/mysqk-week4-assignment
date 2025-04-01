/*Show the total payment amount for each payment date from the payments table
*/
SELECT payment_date, SUM(amount) AS total_payment
FROM payments
GROUP BY payment_date
ORDER BY payment_date DESC
LIMIT 5;

/* Find the average credit limit of each customer from the customers table */
SELECT customer_name, country, AVG(credit_limit) AS avg_credit_limit
FROM customers
GROUP BY customer_name, country;

/*  Find the total price of products ordered from the orderdetails table */
SELECT product_code, quantity_ordered, SUM(price_each * quantity_ordered) AS total_price
FROM orderdetails
GROUP BY product_code, quantity_ordered;

/* Find the highest payment amount for each check number from the payments table */
SELECT check_number, MAX(amount) AS highest_payment
FROM payments
GROUP BY check_number;
