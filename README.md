# Pewlett-Hackard-Analysis

## Overview of Project
The project studies the employee data of a company.

### Purpose

**Analytical:** The project analyzes the number of employees retiring from a company, so that necessary steps can be taken to prevent an employee shortage and carry out the transition smoothly for the newly hired employees.

**Technical:** The project employs PostgreSQL through pgAdmin

## Results

1. There are only 2 managers retiring (which a very small number compared to the number of employees at the company), since there aren't managers available in the mentorship programs, senior members from the retiring managers' teams can be promoted

2. Approximately 36,000+ engineers are retiring. These are highly technical roles, which would require specific qualifications from candidates. Therefore, the company must try to allocate most resources to replenishing and training the engineering department

3. There are fewer employees avaible to train than there will be requiring training. This can overcome by having 1 employee train multiple people. However, as can be seen in the following table, the ratio of trainees to trainers is incredibly high for certain titles (Senior Engineers, Senior Staff and Technique Leaders). Since these are senior positions, the company should try to promote internal employees from the same department instead of hiring external ones, so that the training burden is lessened. This way, the older employees (who have now been promoted) will be available to train the newer ones, but also require much less training/mentoring themselves for the senior positions they will now be holding.

| Title | Employees Retiring | Employees in Mentorship Program | # of Trainees per Mentor | 
| --- | :---: | :---: | :---: |
| Manager | 2 | 0 | 0 |
| Senior Engineer | 25916 | 309 | 84 |
| Engineer | 9285 | 382 | 24 |
| Assistant Engineer | 1090 | 57 | 19 |
| Senior Staff | 24926 | 434 | 57 |
| Staff | 7636 | 290 | 26 |
| Technique Leader | 3603 | 77 | 47 |


4. The employees in the mentorship program will be retiring in 10 years, instead of facing a similar situation, the company can start hiring newer employees in batches over the entire decade. Pewlett Hackard can also start preparing lucrative retirement packages should they feel that they have more employees than they should, and can offer early retirement to some of their employees


## Summary

**Q1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

Ans. The following number of employees for each title are about to retire from the company:

<p align="center">
<img src="/Resources/retiring_employees.png" width="25%" height="20%">
</p>


**Q2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**

Ans. The following number of employees for each title are qualified to mentor new employees joining the company:

<p align="center">
<img src="/Resources/mentorship_employees.png" width="25%" height="20%">
</p>

As can be seen from the 2 tables above, unfortunately there aren't enough employees in all departments to mentor the next generation of Pewlett Hackard employees 
