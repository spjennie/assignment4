SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
/* list each country name where the population is larger than that of 'Russia' */

SELECT name FROM world
  WHERE continent = 'Europe'
  AND gdp/population >
   (SELECT gdp/population FROM world
    WHERE name='United Kingdom')
/* show the countries in Europe with a per capita GDP greater than 'United Kingdom' */

SELECT name,continent FROM world
  WHERE continent IN (SELECT continent FROM world WHERE name = 'Argentina' OR name = 'Australia')
  ORDER BY name
/* list the name and continent of countries in the continents containing either Argentina or Australia */

SELECT name, population FROM world
  WHERE population > (SELECT population FROM world WHERE name = 'Canada')
 AND population < (SELECT population FROM world WHERE name = 'Poland')
/* which country has a population that is more than Canada but less than Poland */

SELECT name,CONCAT(ROUND(population*100/(SELECT population FROM world WHERE name ='Germany'),0),'%') as population
  FROM world WHERE continent='Europe';
/* show the name and population of each country in Europe */

SELECT name FROM world
  WHERE gdp > ALL (SELECT gdp FROM world WHERE continent = 'Europe' AND gdp > 0)
/* which countries have a GDP greater than every country in Europe? */

SELECT continent, name, area FROM world x
  WHERE area >= ALL
   (SELECT area FROM world y
    WHERE y.continent=x.continent
    AND area>0)
/* find the largest country (by area) in each continent, show the continent, the name and the area */

SELECT continent,name FROM world x
  WHERE x.name=(SELECT y.name FROM world y WHERE y.continent=x.continent ORDER BY name LIMIT 1)
/* list each continent and the name of the country that comes first alphabetically */

SELECT name, continent, population FROM world x
  WHERE 25000000 >= ALL
   (SELECT population FROM world y
    WHERE y.continent=x.continent);
/* find the countries where all countries have a population <= 25000000 */

SELECT name, continent FROM world x
  WHERE population > ALL
   (SELECT 3*population FROM world y
    WHERE y.continent=x.continent AND x.name <> y.name)
/* some countries have population more than three times that of any of their neighbors */
