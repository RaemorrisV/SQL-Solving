select sum(population)
       from city
       group by countrycode
       having countrycode='JPN'
       ;