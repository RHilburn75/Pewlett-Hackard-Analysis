# Pewlett-Hackard-Analysis
## Project Overview
  Bobby and I colaborated on a project analysis for Pewlett - Hakard, using SQL.  Due to the success of both our analysis and colaboration, we have been tasked to 2 more assignments.  With the upcoming "silver tsunami" upont eh company, we have been task to determine the number of retiring employees per title, and to identify employees who will be eligible for the mentorship program.  The company needs the information to proactively plan against the surge of workers that will be retiring in the next few years.  This information will be used to ID open positions, training for associates and to ensure a seemless transition.  In order to do this we'll lay out the following:
 
  1. ID the retiring employees by title
  2. Determine the number of retiring employees department and title.
  3. Who will be eligible for the mentorship program.
  4. Define the number of employees heading towards retirement, who can provide mentoring to our up and coming associates by title and department.
  5. What roles need to be filled by title and separtment
 
## Results
1. ID the retiring employees by title
    - The table (listed below) was used in identifying the number of retiring employees.  this list includes, employee number, name (first and last), title, from date, and to date.
    - The file was quite extensive but looking at the snapshot of the table, it shows the same person more than once. Multiple lines for the same person reporesents multiple jobs the asscoiate had during their tenure at PH.
    - This table is the full list of employees that will be retiring soon.

![image](https://user-images.githubusercontent.com/94253815/149680492-e9f539cd-65dc-4fb2-8603-ad68bd347067.png)

2. The list of retiring employees without duplicates
    - This list deletes the duplicate lines and sorts out similar to the above table.
    - Once all of associate rows were deleted, it reduced the query from over 133,000 lines to 90,398 rows.
    - This will give PH a better idea of which employee will be retiring within the next 3 years  and most recent title


![image](https://user-images.githubusercontent.com/94253815/149681181-bde86d8f-b15f-4d41-b86f-d074e3a18fcd.png)


3. Grouped retiring employees by title
    - This table sums up the number of employees by title
    - Total rows - 7
    - We can begin focusing on the areas where staff will be retiring. 
   Using this information, we can begin to focus in on the departments that will need to be onboarded and backfilled.  This will also provide the asscociates that will be retiring to mentor the new employees for smooth transition.
   
   ![image](https://user-images.githubusercontent.com/94253815/149681388-95d9ca45-0b8b-47f0-8e9d-9328029c63ff.png)

4. Employee's available for Mentorship
    - 1549 rows returned in the query.
    - The table includes, the employee Number, name (first and last), birthdate, from date, to date and title.
    - This is the list of employee's who will be eligible for the mentorship program.


![image](https://user-images.githubusercontent.com/94253815/149682537-fdc99fbb-b507-4a56-9e7a-9594f12c1ca0.png)

  









# Summary
With the upcoming "silver tsunami", this information and analysis is vital in planning.  These reports above provide pivotal information regarding who is retiring, what departments they are in, who will be available for a mentorship program and how many need to be replaced. Big companies like PH need to be proactive in making sure there are no gaps between the new coming in and the retiring associates going out.  Although there's a lot of retiring employees, it would benefit Pewlet-Hackard to utilize the time to bring in new talent and give them an opportunity to learn from the soon to be retiring group.  With proper planning, it can be achieved.  There's enough retiring associates to foster learning and growth.  This also gives the next round of leaders in the organization to get promoted and "pass the torch" to those qualified.
