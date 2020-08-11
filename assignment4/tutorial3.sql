SELECT yr, subject, winner
  FROM nobel
  WHERE yr = 1950
/* change the query shown so that it displays Nobel prizes for 1950 */

SELECT winner
  FROM nobel
  WHERE yr = 1962
 AND subject = 'Literature'
/* show who won the 1962 prize for literature */

SELECT yr, subject FROM nobel
  WHERE winner = 'Albert Einstein'
/* show the year and the subject that won 'Albert Einstein' his prize */

SELECT winner FROM nobel
  WHERE yr >= 2000
 AND subject = 'Peace'
/* give the name of the 'Peace' winners since the year 2000, including 2000 */

SELECT yr, subject, winner FROM nobel
  WHERE subject = 'Literature'
 AND yr BETWEEN 1980 and 1989
/* show all details of the Literature prize winners for 1980 to 1989 inclusive */

SELECT * FROM nobel
  WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson','Jimmy Carter','Barack Obama')
/* show all details of the presidential winners */

SELECT winner FROM nobel
  WHERE winner LIKE 'John%'
/* show the winners with first name John */

SELECT yr, subject, winner FROM nobel
  WHERE (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984)
/* show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984 */

SELECT yr, subject, winner FROM nobel
  WHERE yr = 1980
 AND subject NOT IN ('Chemistry','Medicine')
/* show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine */

SELECT yr, subject, winner FROM nobel
  WHERE (yr < 1910 AND subject = 'Medicine')
  OR (yr >= 2004 AND subject = 'Literature')
/* show year, subject, and name of people who won a 'Medicine' prize in an early year together with winners of a 'Literature' prize in a later year */

SELECT * FROM nobel
  WHERE winner = 'PETER GRÜNBERG'
/* find all details of the prize won by PETER GRÜNBERG */

SELECT * FROM nobel
  WHERE winner LIKE ('EUGENE O_NEILL')
/* find all details of the prize won by EUGENE O'NEILL */

SELECT winner, yr, subject FROM nobel
  WHERE winner LIKE ('Sir%')
  ORDER BY yr DESC, winner
/* list the winners, year and subject where the winner starts with Sir */

SELECT winner, subject
  FROM nobel
  WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject,winner
/* show the 1984 winners and subject ordered by subject and winner name */



