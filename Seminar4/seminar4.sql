select color , count(*) as count
from auto where mark = "BMW" or mark = "LADA"
group by color;

 select * from auto;
 
 select mark , count(*) as count , count("BMW") as shit  
 from auto 
 group by mark;
--  -- непонимаю как выполнить пункт 2 , вывел 
-- колличество бмв , как добавить столбик 
-- и к нему условия обратные первому столбику

 
 create table test_a (id INT , test varchar(10));
 create table test_b (id INT);
 insert into test_a(id,test) values
 (10,"A"),
 (20,"A"),
 (30 , "F"),
 (40,"D"),
 (50,"C");
 insert into test_b(id) values
 (10),
 (30),
 (50);
 
 select test_a.id from test_a
 left join test_b
 on test_a.id = test_b.id
 where test_b.id is null;


 
 
