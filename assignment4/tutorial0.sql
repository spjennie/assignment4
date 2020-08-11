SELECT population FROM world
  WHERE name = 'France'
/* uses a WHERE clause to show the population of 'France'.\

SELECT name, population FROM world
  WHERE name IN ('Brazil', 'Russia', 'India', 'China');
/* checking a list the word IN allows us to check if an item is in a list. */

SELECT name, area FROM world
  WHERE area BETWEEN 250000 AND 300000
/* BETWEEN allows range checking. Shows countries with an area of 250,000-300,000 sq. km. */

