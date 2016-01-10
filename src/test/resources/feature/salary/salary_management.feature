Feature: Salary Management
	
  Scenario Outline: Modify an employee's salary
    Given the salary management system is initialized with the following data
      | id  | user      | salary   |
      | 1   | donald    | 60000.0  |
      | 2   | dewie     | 62000.0  |
      | 3   | goofy     | 55000.0  |
      | 4   | scrooge   | 70000.0  |
      | 5   | daisy     | 56000.0  |
      | 6   | minnie    | 62000.0  |
      | 7   | mickey    | 51000.0  |
      | 8   | fethry    | 66500.0  |
    When the boss increases the salary for the employee with id '<Employee>' by <Increase>%
    Then the payroll for the employee with id '<Employee>' should display a salary of <Salary>

    Examples:
      | Employee | Increase | Salary | Something    | Something more | Something more2 |
      | 3        | 5        | 57750  | <NULL>       | my.test        | mytest          |
      | 3        | 10       | 60500  | NOT_RELEVANT | my.test        | mytest          |
      | 4        | 10       | 77000  | NOT_RELEVANT | my.test        | mytest          |
