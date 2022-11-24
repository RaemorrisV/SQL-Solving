select months*salary as total, count(*)
       from employee
       group by total
       having total=(select max(months*salary) from employee)
       ;