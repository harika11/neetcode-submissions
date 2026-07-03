-- Write your query below
select first_name , last_name, city, state from person s 
left join address  a on a.person_id = s.person_id