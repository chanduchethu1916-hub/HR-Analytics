
select*from employee;

 /* total employees */
  select count(*) as total_employees
  from employee;
  
  /* gender distribution */
  select gender, count(*) as  total
  from employee
  group by gender;
  
  /*  employee by department*/
  
  select count(*),department as total
  from  employee
  group by Department
  order by total desc;
  
  
  /* avereage salary by deprtment*/
  
   select  round(avg(salary),0)department
   from employee
   group by department;
   
   
   /* average ratings by manager*/
   
   
    select round(avg(managerrating),2) as avg_manager_ratings
    from performancerating;
    
    
    /* average job satisfaction*/
    
    select round(avg(jobsatisfaction),1) as avg_job_satisfaction
    from performancerating;
    
    /* traing oppurtunities taken*/
    
    select  round(avg(TrainingOpportunitiesTaken),2) as Traing_opportunities
    from performancerating;
    
    /* high  performer%*/
    
select round(sum(case when managerrating>=4 then 1 else 0 end)*100
/count(*),2)as high_performer
from performancerating;


    
    
    
    
  
  
  