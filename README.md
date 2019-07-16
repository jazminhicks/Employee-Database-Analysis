# employee_database

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

### Steps Taken to Anaylze Data...
###### Modeling
1. Inspected the CSVs and created an ERD of the tables using http://www.quickdatabasediagrams.com/. Here, data types, primary keys, foreign keys, and other constraints were specified

###### Engineering
2. Exported the ERD to postgresql to create a table schema for each csv file.

3. Imported each csv file into the corresponding SQL table.

###### Analysis Part 1
Query the database to answer the following:
*  List the following details of each employee: employee number, last name, first name, gender, and salary.

*  List employees who were hired in 1986.

*  List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

*  List the department of each employee with the following information: employee number, last name, first name, and department name.

*  List all employees whose first name is "Hercules" and last names begin with "B."

*  List all employees in the Sales department, including their employee number, last name, first name, and department name.

*  List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

*  In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

###### Analysis Part 2
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

*  Imported the SQL database into Pandas

*  Create a bar chart of average salary by title.
