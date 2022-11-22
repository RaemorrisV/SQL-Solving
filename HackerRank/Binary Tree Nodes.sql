select n,
       case when p is NULL then 'Root'
       when n not in (select  p from bst where p is not NULL) then 'Leaf'
       else 'Inner'
       end
       from bst
       order by n asc;
