use seminar3;
select city ,sname , snum , comm 
from salespeople;

select * from customers;

select rating , cname  from customers
where city = "SanJose";

select distinct snum from salespeople;

select cname from customers
where cname like "G%";

select * from orders
where amt > 1000;

select MIN(amt) from orders;

select * from customers
where rating > 100 and not city = "Rome";

select * from seminar_three;

select salary from seminar_three
order by salary desc; 

select salary from seminar_three
order by  salary desc; 

select salary from seminar_three
order by salary desc limit 5;

select speciality , sum(salary) as sum
from seminar_three 
group by speciality
having sum(salary) > 100000
;  

