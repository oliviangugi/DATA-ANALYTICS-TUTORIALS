# WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;
# = sign is called a Comparisson Operator. = returns rows where only the name is Leslie.

SELECT *
FROM employee_salary
WHERE salary > 50000
;
# Selects rows where salaries are GREATER THAN 50,000. If we want to include salaries = to 50000
SELECT *
FROM employee_salary
WHERE salary >= 50000
;
# include the comparisson operator >=

SELECT *
FROM employee_salary
WHERE salary < 50000
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female'
;
# if we want to select ONLY female gender you can use two options ie WHERE gender = 'Female' or WHERE gender !='Male'

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
;

# What if we want to select data based on dates? eg check for people born after 1985

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;


# How to use LOGICAL OPERATORS  eg AND ; OR :NOT  
# Logical Operators help deeply filter out data by adding complexities to the querry
# eg filter out employees by male gender and  born after 1985     or employees born after 18985 OR male gender   or filter employees that awere born after 1985 where  

# Logical Operartors also comply to PEMDAS in that you can have specific functions in your inquiry
# eg you want to get the specific person called Leslie whose is 44 yrs old and anyone else whose age is above 55. Include the () after the 1st instruction.

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;


# LIKE Stamemets helps to get Specific Patterns, not an exact match.  eg
# Special characters that depict LIKE command are  % and _ signs

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Jerry'
;
# the result MUST be Jerry. WHat if we want anyone whose name starts witH Jer? we use LIKE 'Jer%'
# if we want anyone whose name has 'er' in it, then we use LIKE '%er%'

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'
;

# What if we want to get anyone whose name starts with an A? We use 'a%'   A %at the end shows name starts with an A while %a% shows name has an A anywhoere in it.

# When using the parenthesis it limits us to showing data that has specific characters ed LIKE 'a__' means has an A and two character after it. eg


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'
;
  
  # where we have 'a___%' ie a,3 parenthesis and % means it has an a, 3 characters after it and anything else in the name
  
  
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;

#what if we want to get anyone born in 1989?


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%'
;
