select avg(population)
       from city
       group by district
       having district='California'
       ;