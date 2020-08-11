SELECT name FROM world
  WHERE name LIKE 'Y%'
/* finding the country that start with Y */

SELECT name FROM world
  WHERE name LIKE '%y'
/* finding countries that end with y */

SELECT name FROM world
  WHERE name LIKE 'x%'
/* find the countries that contain the letter x */

SELECT name FROM world
  WHERE name LIKE 'land%'
*/ find the countries that end with land */

SELECT name FROM world
  WHERE name LIKE 'C%'
  AND name LIKE '%la'
*/ find the countries that start with C and end with la */

SELECT name FROM world
  WHERE name LIKE '%oo%'
/* find the country that has oo in the name */

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'
*/ find the countries that have three or more a in the name */

SELECT name FROM world
  WHERE name LIKE '_t%'
ORDER BY name
/* find the countries that have "t" as the second character */

SELECT name FROM world
  WHERE name LIKE '%o__o%'
*/ find the countries that have two "o" characters separated by two others */

SELECT name FROM world
  WHERE name LIKE '____'
*/ find the countries that have exactly four characters */

SELECT name
  FROM world
 WHERE name = capital
*/ find the country where the name is the capital city */

SELECT name
  FROM world
 WHERE capital = concat (name, ' City')
*/ find the county where the capital is the country plus "City" */

SELECT capital, name FROM world
  WHERE capital LIKE concat ('%',name,'%')
*/ find the capital and the name where the capital includes the name of the country */

SELECT capital, name FROM world
  WHERE capital LIKE concat ('%',name,'%')
 AND capital <> name
*/ find the capital and the name where the capital is an extension of name of the country */

SELECT name, REPLACE (capital, name, '') as extension
  FROM world
  WHERE capital LIKE concat ('%',name,'%')
 AND capital <> name
*/ show the name and the extension where the capital is an extension of name of the country */