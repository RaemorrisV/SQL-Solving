select round(lat_n,4)
      from (select lat_n, PERCENT_RANK() over (order by lat_n asc) as p
              from station) a
      where p = 0.5
      ;