-- subquery
-- 1) select 절

-- 2) from 절의 서브쿼리
select s.a, s.b, s.c 
  from (select now() as a, sysdate() as b, 3+1 as c) s;

-- 3) where절의 서브쿼리
-- 예제) 현재, Fai Bale이 근무하는 부서의 직원들의 사번, 이름을 출력하세요.

select dept_no
  from dept_emp a, employees b
 where a.emp_no = b.emp_no
   and a.to_date = '9999-01-01'
   and concat(first_name, ' ', last_name) = 'Fai Bale';

   
select a.emp_no, b.first_name 
  from dept_emp a, employees b
 where a.emp_no = b.emp_no
   and a.to_date = '9999-01-01'
   and a.dept_no = 'd004';
   
-- sol)
select a.emp_no, b.first_name 
  from dept_emp a, employees b
 where a.emp_no = b.emp_no
   and a.to_date = '9999-01-01'
   and a.dept_no = (select dept_no
					  from dept_emp a, employees b
					 where a.emp_no = b.emp_no
					   and a.to_date = '9999-01-01'
					   and concat(first_name, ' ', last_name) = 'Fai Bale');
   
   