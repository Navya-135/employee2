create table employee2(
id int primary key auto_increment,
name varchar(20) not null,
sal bigint not null,
state varchar(20)not null,
country varchar(20)not null default('india'),
isactive bit default(1)
);

insert  into employee2(name,sal,state,country,isactive)values('Navya',50000,'AP','India',1);
insert  into employee2(name,sal,state,country,isactive)values('Mahalya',40000,'ap','india',1);
insert  into employee2(name,sal,state,country,isactive)values('Pranathi',30000,'ts','india',1);
insert  into employee2(name,sal,state,country,isactive)values('Aravind',30000,'ap','india',1);

select *from employee2;

#count no of employees in a table
select count(*) from employee2;
select count(id)from employee2;

#count no.of employees in ap and ts
select count(id) from employee2 where state="ts";
select count(id)from employee2 where country="india";
select count(id) from employee2 where state="ap";
#get both results in one result set
select state,count(id)as noofemployees from employee2 group by state;
select country,count(id)as noofemployees from employee2 group by country;
#count no.of employees in table

select count(id) from employee2;

select count(name) from employee2;

#aggregate function
#sum
select sum(id) from employee2;
#avg
select avg(id) from employee2;

#min
select min(sal) from employee2;
#max
select max(sal) from employee2;

select state,count(id) from employee2 where state="ts";
select name,count(name) from employee2 where name="Aravind";

#string
#ltrim
select ltrim (id)from employee2;
select ltrim(name) from employee2;
#rtrim
select rtrim(id) from employee2;
#len
select length(id) from employee2;
select length(name) from employee2;
select length(state) from employee2;
#left
select left (id, 1)from employee2;
select left (name, 5)from employee2;
#right
select right (id,2 ) from employee2;
select right(name,1 )from employee2;
select right(state,2 )from employee2;
#lower
select lower("Iam")from employee2;
select lower("Navya")from employee2;
#upper
select upper("id")from employee1;
select upper('Mahalya')from employee1;
select upper(name)from employee1;

#date
#get date
select current_date();

select date(2023-12-12);

select day('2023-12-12');

select month('2023-12-12');

select year('2023-12-12');

select day('2023-12-12');

select dayname('2023-12-12');





