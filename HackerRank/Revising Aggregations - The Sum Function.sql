select sum(population)
       from city
       group by district
       having district='California'
       ;