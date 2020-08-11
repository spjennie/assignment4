SELECT name, continent, population FROM world
/* observe the result of running this SQL command to show the name, continent and population of all countries */

SELECT name FROM world
  WHERE population > 200000000
/* show the name for the countries that have a population of at least 200 million */

SELECT name, gdp/population as 'per capita GDP' FROM world
  WHERE population > 200000000
/* give the name and the per capita GDP for those countries with a population of at least 200 million */

SELECT name, population/1000000 AS population FROM world
  WHERE continent = 'South America'
/* show the name and population in millions for the countries of the continent 'South America' */

SELECT name, population FROM world
  WHERE name IN ('France','Germany', 'Italy')
/* show the name and population for France, Germany, Italy */

SELECT name FROM world
  WHERE name like '%United%'
/* show the countries which have a name that includes the word 'United' */

SELECT name, population, area FROM world
  WHERE area > 3000000
  OR population > 250000000
/* show the countries that are big by area or big by population */

SELECT name, population, area FROM world
  WHERE area > 3000000
 XOR population > 250000000
/* show the countries that are big by area or big by population but not both */

SELECT name, ROUND(population/1000000,2) as 'population', ROUND (gdp/1000000000,2) FROM world
  WHERE continent = 'South America'
/* show the name and population in millions and the GDP in billions for the countries of the continent 'South America' */

SELECT name, ROUND (gdp/population, -3) as 'per-capita GDP' from world
  WHERE gdp > 1000000000000
/* show the name and per-capita GDP for those countries with a GDP of at least one trillion */

SELECT name, capital
  FROM world
  WHERE LENGTH(name) = LENGTH(capital)
/* show the name and capital where the name and the capital have the same number of characters */

SELECT name, capital FROM world
  WHERE LEFT(name,1) = LEFT(capital,1)
  AND name <> capital
/* show the name and the capital where the first letters of each match */

SELECT name

FROM world
  WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND    name LIKE '%u%'
  AND name NOT LIKE '% %'
/* find the country that has all the vowels and no spaces in its name */


