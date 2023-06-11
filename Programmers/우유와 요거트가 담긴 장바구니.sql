SELECT a.CART_ID
    from CART_PRODUCTS a join  CART_PRODUCTS b on a.CART_ID=b.CART_ID
    where (a.NAME ='Milk' and  b.NAME ='Yogurt') or (b.NAME ='Milk' and  a.NAME ='Yogurt')
    group by(a.CART_ID)
    order by a.CART_ID;