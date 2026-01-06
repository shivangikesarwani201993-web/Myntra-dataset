USE myntra;

####### BRAND REPORT CARD #######
# 1) Which product_ category of any brand is sold the most? 
SELECT
	product_tag, SUM(rating_count) AS product_sold
FROM
    product
GROUP BY product_tag
ORDER BY product_sold DESC
LIMIT 1;
## Tshirts ##

# 2) List top 5 brands which has sold most number of tshirts? 
SELECT 
     brand_name, SUM(rating_count) AS product_sold
FROM 
	product
WHERE product_tag = 'tshirts'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;
## Roadster, HRX by Hrithik Roshan, Mast & Harbour, HERE&NOW, DILLINGER ##

# 3) List top 5 brands which has sold most number of shirts?
SELECT
    brand_name, COUNT(rating_count) AS product_sold
FROM 
    product
WHERE product_tag = 'shirts'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;
## Roadster, HIGHLANDER, Louis Philippe, WROGN, Allen Solly ##

# 4) List top 5 brands which has sold most number of jeans?
SELECT
	brand_name, SUM(rating_count) AS product_sold
FROM
    product
WHERE product_tag = 'jeans'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;
## Roadster, SASSAFRAS, WROGN, HIGHLANDER, High Star ##

# 5) List of top 5 brands which has sold most number of dresses?
SELECT
     brand_name, COUNT(rating_count) AS product_sold
FROM
     product
WHERE product_tag = 'dresses'
GROUP BY brand_name
ORDER BY product_sold DESC
LIMIT 5;
## URBANIC, JC Collection, Tokyo Talkies, H&M, SASSAFRAS ##

# 6) Most popular product name in MYNTRA?
SELECT
    product_name, SUM(rating_count) AS popular
FROM 
    product
GROUP BY product_name
ORDER BY popular DESC
LIMIT 1;
## Men Slim Fit Casual Shirt ##

# 7) Number of product sold for every rating (0-5)?
SELECT 
    rating, SUM(rating_count) AS sold
FROM
    product
GROUP BY rating
ORDER BY rating ASC;

# 8) Number of products sold for every rating by nike?
SELECT
    rating, brand_name, SUM(rating_count) AS product_sold
FROM
	product
WHERE brand_name = 'nike'
GROUP BY rating
ORDER BY product_sold DESC
LIMIT 5;

# 9) Number of products sold for every rating in tshirt category?
SELECT
    rating, SUM(rating_count) AS product_sold
FROM
    product
WHERE product_tag = 'tshirts'
GROUP BY rating
ORDER BY rating ASC;

# 10) Relation between price of the thisrt and its rating wrt to people rated?
SELECT 
	discounted_price, rating, SUM(rating_count) AS product_sold
FROM
    product
WHERE product_tag = 'tshirts'
GROUP BY discounted_price, rating
ORDER BY discounted_price;

########## USER SPECIFIC ##########

# 1) Which product categories witness the highest sales during the year?
SELECT
    product_tag, SUM(rating_count) AS sale
FROM 
    product
GROUP BY product_tag
ORDER BY sale DESC
LIMIT 1;
## Tshirts 2063921 ##

# 2) Which brand witness the highest sales during year?
SELECT
     brand_name, SUM(rating_count) AS sale
FROM
     product
GROUP BY brand_name
ORDER BY sale DESC
LIMIT 1;
## Roadster 2106904 ##

# 3) Which product categories of a specific brand witnessed maximum sales?
SELECT
     brand_name, product_tag, SUM(rating_count) AS sale
FROM 
     product
GROUP BY brand_name, product_tag
ORDER BY sale DESC
LIMIT 1;
## Roadster Tshirts 964611 ##

# 4) Which product is witnessed the maximum sales?
SELECT
     product_name, SUM(rating_count) AS sales
FROM
    product
GROUP BY product_name
ORDER BY sales DESC
LIMIT 1;
## Men Slim Fit Casual shirt 266234 ##





  