# Pewlett-Hackard-Analysis

## Project Overview

### Analysis

The purpose of this project was to create a series of tables for a company, Pewlett Hackard, in order to future proof the company by analyzing how many employees will be retiring and how many of these employees are eligible for a retirement package. Using an ERD linking data provided by the company we were able to create custom tables detailing which employees eligible for a retirement package would retire soon, how many employees would retire, and ultimately how many employees would retire in two specific groups, Sales and Developement. The project ultimately asked us to determine the number of retiring employees per title and to identify which current employees are eligible for a mentorship program as a part of preparing the company for the "silver tsunami" that is to come.

### Results

The results of our analysis returned the following four major results:

- The largest groups of employees that will be retiring and are eligible for a retirement package are in Senior level positions - first Senior Engineers (29,414) followed very closely by Senior Staff (28,254).
- The smallest group of employees that will be retiring and are eligible for a retirement package are managers (2).
- The results of our analysis reveal that almost all positions within Pewlett Hackard are held mostly by individuals born between 1952 and 1955.
- There are significantly less employees eligible for the mentorship program (1,549) than the amount of employees set to retire (90,398).

Below are screenshots of the tables created for this analysis, which capture these four major findings:

![]()

![]()

### Summary

Based on the data provided to us by Pewlett Hackard, two additional tables were created to answer the following questions:

How many roles will need to be filled as the "silver tsunami" begins to make an impact?

- In order to address this question, a query that calculates the difference between the employees that are eligible for the mentorship program and those that will retire was created. This query assumes that the mentorship eligible employees will fill the positions left behind by the retiring employees and then gives us a number that represents the remaining open positions that will have to be filled, which came out to be 88,849 employees as shown below.

![]()

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

- To answer this question, a query that followed the same logic used to calculate the count of retiring titles was created using the information from the mentorship_eligibility table. As shown below, there are way more than enough retiring employees to tutor the employees who are eligible for the program not only as a sum but also by title. This would suggest that the mentorship program should be expanded to include more employees, this could be done by adjusting the eligibility requirement in the program to include employees born outside of 1965.

![]()