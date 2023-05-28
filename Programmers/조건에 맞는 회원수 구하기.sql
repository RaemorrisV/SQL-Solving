SELECT  count(*) as USERS
    from USER_INFO
    where joined Like "2021%" and age between 20 and 29;