# Pewlett-Hackard-Analysis
## Overview
Pewlett-Hackard has several employees that are approaching retirement. We have created a table for them that shows an estimation of how many employees are retiring based on their birthdays, as well as what their titles currently are in the company. Also, we prepared a table for them showing them all employees nearing retirement that could be consodered for their mentorship program.

## Results
![mentorship_eligibilty](https://user-images.githubusercontent.com/99751636/164955728-5ccae369-2a54-45a0-a878-2e7247aa2a99.png)
* There are 1549 employees born in the year 1965 that qualify for the mentorship program.

![retiring_titles](https://user-images.githubusercontent.com/99751636/164955732-e10a49cb-8bfe-443a-a43f-47dffacdc83f.png)
* We are anticipating 72458 employees will be retiring.
* Over half of the reitiring staff are senior level employees.
* Only 2 managers are projected to retire.
## Summary
##### Select count(me.emp_no) as mentor_eligible,
##### count(ut.emp_no) as retirement_eligible
##### From mentorship_eligibilty as me
##### Full Join unique_titles as ut
##### on (me.emp_no = ut.emp_no);
![positions_to_fill](https://user-images.githubusercontent.com/99751636/164956752-b5adffe2-b794-45c8-b4df-cd86af42b07d.png)

* We will need to replace 74,0007 emploees as we prepare for the "silver tsunami". That includes not only the 72,458 employees reiting, but also the 1549 employees stepping into a mentor role. 
##### Select Count(me.title),
##### me.title
##### From mentorship_eligibilty as me
##### Group By (me.title)
##### Order By Count(me.title) DESC;
![me_count_titles](https://user-images.githubusercontent.com/99751636/164956293-cb72c82b-8b56-4195-a662-16fa09a83001.png)

* HP does not look prepared to handle this oncoming wave of retirments.
* They will take the biggets hit at the senior level. There are 24926 senior level staff leaving while there are 420 senior level staff eligible for the mentorship program. To replace all retiring employees, each mentor would have to train roughly 60 employees each. I do not feel like that is a realistic goal for them. 
