-- -- Write your query below
select distinct c.customer_id , c.customer_name  from customers c
inner join orders o on c.customer_id = o.customer_id
where c.customer_id in (select distinct customer_id from orders 
                      where product_name = 'A')
      and c.customer_id in (select distinct customer_id from orders 
                      where product_name = 'B')
    and c.customer_id not in  (select distinct customer_id from orders 
                      where product_name  in ('C'))
order by c.customer_name
