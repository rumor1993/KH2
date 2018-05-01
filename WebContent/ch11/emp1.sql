--<2 . 이클립스에서 실행하는 경우>

create table emp1
as
select * from emp;
-- 영역 설정 후 ALT+C

drop procedure del_all;

create or replace procedure del_all
is

begin
	delete from emp1;
end;
-- 영역 설정 후 ALT+C


select * from emp1;

select * from emp;


create table emp2
as
select * from emp;
-- 영역 설정 후 ALT+C

create or replace procedure
	del_name(vename emp.ename%TYPE)
is
 begin
	 delete from emp2 where ename = vename;
 end;
 -- 영역 설정후 ALT+C 

select * from emp2;

select * from emp;
