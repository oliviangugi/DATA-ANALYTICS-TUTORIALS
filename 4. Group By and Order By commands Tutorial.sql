
#GROUP BY and ORDER BY
#GROUP BY puts together rows that have specified values in the rown or columns called. Then you can run a aggregate functions (eg AVG, MAX,MIN, COUNT, ORDER BY) on those rows. eg

SELECT *
FROM parks_and_recreation. employee_demographics
;

SELECT gender
FROM parks_and_recreation. employee_demographics
GROUP BY gender
;

SELECT first_name
FROM parks_and_recreation. employee_demographics
GROUP BY gender
;
# This code will NOT work because the select clause HAS to match the GROUP BY clause

# To run aggregate functions eg Average (AVG) in a GROUP BY code:

SELECT gender, AVG(age)
FROM parks_and_recreation. employee_demographics
GROUP BY gender
;

# This gives us the average age of the grouped rows. ie average age of males and average age of females

# You can group from a table based on multiple attributes of columns in that table eg.
SELECT occupation, salary
FROM parks_and_recreation. employee_salary
GROUP BY occupation, salary
;

#  MAX and MIN as below and for every function, a row with that title is generated

SELECT gender, AVG(age), MAX(age), MIN(age)
FROM parks_and_recreation. employee_demographics
GROUP BY gender
;

# Another aggregate function is COUNT used as below. COUNT tells us how many entries of the specific attribute are in that row, eg how many males and how many females.

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation. employee_demographics
GROUP BY gender
;

#How to use ORDER BY . It sorts the result in either ascending or descending order. By default, its in ascending or first to last. to be specific you can use ASC, DESC or any other order you want.

SELECT *
FROM parks_and_recreation. employee_demographics
ORDER BY first_name DESC
;
# It is VERY important to know how you place the columns in your IORDER BY code for data to be accurate. First column should be a primary column that's common to all rows.
SELECT *
FROM parks_and_recreation. employee_demographics
ORDER BY gender, age DESC
;

#Sometimes, you can ORDER BY the Number/position of the column instead of the column name, of you know its position. This is NOT best practice though, incase you remove or delete some columns, you will MAKE mistakes. eg above code
 
 SELECT *
FROM parks_and_recreation. employee_demographics
ORDER BY 5, 4 DESC
;