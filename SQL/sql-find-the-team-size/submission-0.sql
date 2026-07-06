-- Write your query below
select a.employee_id, b.team_size from
(select employee_id,team_id from  employee) a
full outer join
(
select team_id, count(employee_id) team_size
from  employee
group by team_id
) b on (a.team_id=b.team_id)