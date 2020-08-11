SELECT SUM(population)
FROM world
/* show the total population of the world */

SELECT DISTINCT continent FROM world
/* list all the continents - just once each */

SELECT SUM(gdp) FROM world WHERE continent = 'Africa'
/* Give the total GDP of Africa */

SELECT COUNT(name) FROM world
  WHERE area > 1000000
/* how many countries have an area of at least 1000000

SELECT SUM(population) FROM world
/* what is the total population of ('Estonia', 'Latvia', 'Lithuania') */

SELECT continent, COUNT(name) FROM world
GROUP BY continent
/* for each continent show the continent and number of countries */

SELECT continent, COUNT(name) FROM world
  WHERE population > 10000000
GROUP BY continent
/* for each continent show the continent and number of countries with the populations of at least 10 million */

SELECT continent FROM world
GROUP BY continent
  HAVING SUM(population) > 100000000
/* list the continent that have a total population of at least 100 million */
