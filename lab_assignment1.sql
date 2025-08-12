Lab 2 Question:
Database Schema: Consider a simple database with one tables: BankAccount BankAccount 

Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance 

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.

	/*INSERT:This statement is used to add new rows (records) to an existing table in a database. 
	  It allows users to specify the values for each column in the new row.*/

         mysql> insert into BankAccount values (101,'Nilesh',15000);
         Query OK, 1 row affected (0.02 sec)

         mysql> insert into BankAccount values (102,'Priti',20000);
         Query OK, 1 row affected (0.01 sec)

         mysql> insert into BankAccount values (103,'situpati',30000);
         Query OK, 1 row affected (0.01 sec)

         mysql> insert into BankAccount values (104,'Drishti',35000);
         Query OK, 1 row affected (0.00 sec)

         mysql> insert into BankAccount values (105,'Om',40000);
         Query OK, 1 row affected (0.01 sec)


 Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.

	/*SELECT:This statement is used to retrieve data from one or more tables in a database.
	It allows users to specify which columns to retrieve and apply conditions to filter the results, 
	returning a subset of the data or the entire dataset.*/
	
         mysql> Select account_holder_name,account_balance from bankaccount;
          +---------------------+-----------------+
          | account_holder_name | account_balance |
          +---------------------+-----------------+
          | Nilesh              |       15000.00  |
          | Priti               |       20000.00  |
          | situpati            |       30000.00  |
          | Drishti             |       35000.00  |
          | Om                  |       40000.00  |
          +---------------------+-----------------+
          5 rows in set (0.00 sec)

 Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.
 
	  mysql> Select account_holder_name,account_balance from BankAccount where account_balance>=30000;
	  +---------------------+-----------------+
	  | account_holder_name | account_balance |
	  +---------------------+-----------------+
	  | situpati            |        30000.00 |
	  | Drishti             |        35000.00 |
	  | Om                  |        40000.00 |
 	  +---------------------+-----------------+
	  3 rows in set (0.00 sec)


 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

	/*UPDATE:This statement is used to modify existing data in one or more rows of a table in a database. 
	       It allows users to change the values of specified columns for records that meet certain conditions.*/


	 mysql> update BankAccount set account_balance=16000 where account_id=101;
	 Query OK, 1 row affected (0.00 sec)
	 mysql> Select * from bankaccount;
	  +------------+---------------------+-----------------+
	  | account_id | account_holder_name | account_balance |
	  +------------+---------------------+-----------------+
	  |        101 | Nilesh              |        16000.00 |
	  |        102 | Priti               |        20000.00 |
	  |        103 | situpati            |        30000.00 |
	  |        104 | Drishti             |        35000.00 |
	  |        105 | Om                  |        40000.00 |
	  +------------+---------------------+-----------------+
	  5 rows in set (0.00 sec)

