
DELIMITER //
CREATE FUNCTION fib(n int)
RETURNS varchar(255)
DETERMINISTIC
BEGIN
	DECLARE n0 int default 0;
    DECLARE n1 int default 1;
    DECLARE n2 INT DEFAULT 0;
    DECLARE res VARCHAR(255) DEFAULT '0 1';
    
    IF n = 1 then
		return n0;
	ELSEIF n = 2 THEN 
		return CONCAT(n0 , ' ' , n1);
	ELSE
		WHILE n > 2 DO
			SET n2 = n1 + n0;
            SET n0 = n1;
            SET n1 = n2;
            SET n = n - 1;
            SET res = CONCAT(res , ' ' , n2);
		END WHILE;
		RETURN res;
	 END IF;	
		
END //
DELIMITER ;

select fib(5);

Select * from bankaccounts;
START TRANSACTION;
UPDATE bankaccounts SET funds = funds - 100 WHERE accountnumber = 'ACC1';
UPDATE bankaccounts SET funds = funds + 100 WHERE accountnumber = 'ACC2';
COMMIT;
Select * from bankaccounts;

DELIMITER $$
CREATE PROCEDURE task2(k int) 

BEGIN
	
    DECLARE res varchar(50) DEFAULT '';
    DECLARE n int DEFAULT 0;
    
    REPEAT
		SET  res = CONCAT(res ,' ',n);
		SET n = n + k;
		UNTIL n > 10
	END REPEAT;
    SELECT res;
END $$
DELIMITER ;

DROP PROCEDURE task2;

CALL repeat_proc(1);

DELIMITER $$
CREATE PROCEDURE task1(sec int) 

BEGIN
	
    DECLARE res varchar(50) DEFAULT ' ';
    DECLARE days int DEFAULT 0;
    DECLARE hours int DEFAULT 0;
    DECLARE mins int DEFAULT 0;
    DECLARE seconds int DEFAULT 0;
    DECLARE ostatokOtDney int;
    DECLARE ostatokOtChasov int;
    set days = ROUND(sec/86400,0);
    set ostatokOtDney = MOD(sec , 86400);
    set hours = ROUND(ostatokOtDney/3600,0);
    set ostatokOtChasov = MOD(ostatokOtDney , 3600);
    set mins = ROUND(ostatokOtChasov/60,0);
    set seconds = MOD(ostatokOtChasov , 60);
	set res = CONCAT(res ,'days :',days, ' ' ,' hours:',hours, ' ',' mins:', mins  ,' ',' seconds:', seconds );
  
    
	
        
    
    SELECT res ;
END $$
DELIMITER ;
call task1(123456);

DROP PROCEDURE task1;

