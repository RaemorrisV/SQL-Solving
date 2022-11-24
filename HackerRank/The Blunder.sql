select ceil(avg(salary)-avg(replace(CAST(salary AS char),'0','')))
      from employees
      ;