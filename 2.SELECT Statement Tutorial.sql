SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name,
birth_date,
age,
(age + 10) * 10
FROM parks_and_recreation.employee_demographics;
# PEMDAS ie order of mathematical functions in MySQL ie parenthesis, eponent,multiplicaiton,division, addition and substitution.
# have separate columns in single code lines allows you to perform additional functions on each column where need be.
# Best practice is when selecting FROM, indicatidace the .db FROM which the data is picked from.the column as above incase you have multiple .dbs in your files.
SELECT DISTINCT first_name, gender 
FROM parks_and_recreation.employee_demographics;

# DISTINCT only selects the unique values in a column
