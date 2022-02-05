USE sakila;

# 1. Get film ratings.
SELECT DISTINCT
	rating
FROM
	film;

# 2. Get release years.
SELECT DISTINCT
	release_year
FROM
	film;

# 3. Get all films with ARMAGEDDON in the title.
SELECT
	title
FROM
	film
WHERE
	title REGEXP "ARMAGEDDON";

# 4. Get all films with APOLLO in the title
SELECT
	title
FROM
	film
WHERE
	title REGEXP "APOLLO";

# 5. Get all films which title ends with APOLLO.
SELECT
	title
FROM
	film
WHERE
	title REGEXP "APOLLO$";

# 6. Get all films with word DATE in the title.
SELECT
	title
FROM
	film
WHERE
	title REGEXP "^DATE | DATE$" or ".DATE.";

# 7. Get 10 films with the longest title.
SELECT
	title
FROM
	film
ORDER BY
	length(title) DESC
LIMIT
	10;

# 8. Get 10 the longest films.
SELECT
	title
FROM
	film
ORDER BY
	film.length DESC
LIMIT
	10;

# 9. How many films include Behind the Scenes content?
SELECT
	COUNT(*)
FROM
	film
WHERE
	special_features LIKE "%Behind%The%Scenes%";
    
# 10. List films ordered by release year and title in alphabetical order.
SELECT
	title
FROM
	film
ORDER BY
	release_year, title ASC;