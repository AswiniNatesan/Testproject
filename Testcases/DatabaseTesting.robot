*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database      pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect from Database
#DATABASE TESTING
#syntax:First install mysql file then in pycharm install Databaselibrary
#and will do Create a table,insert,del,update common command: execute sql string
#insert::execute sql string      insert into tablename values()
#another insert::execute sql script     ../ExcelFiles/InsertData.sql{filename-location}
#create table::execute sql string     Create table table name(int,varchar(20))
#update tabel::execute sql string   update tablename set which you want update
#delete table::execute sql string    delete from tablename



*** Variables ***
${DBName}   employee
${DBUser}   root
${DBPass}   aswini@11
${DBHost}   127.0.0.1
${DBPort}   3306


*** Test Cases ***
#Create Student Table
#    ${output}=  execute sql string  Create table Student(RollNo integer,Name varchar(25),age integer,Degree varchar(20))
#    log to console    ${output}
#    should be equal as strings    ${output}     ${None}
#Inserting Data in Student Table
    #Single Record
    #execute sql string      insert into Student values("6112","jai","20","B.E")
    #execute sql string    insert into Student values("6110","Muthulakshmi","21","B.E")
#Inserting Data in Student Table
#    ${values}=      execute sql script     ../ExcelFiles/InsertData.sql
#    log to console    ${values}
#   should be equal as strings      ${values}   ${None}

#to check if the data is present in the table or not
Check Data
    check if exists in database    select RollNo from Student where Name="Haru";

Check if data is not present
    check if not exists in database    select RollNo from Student where Name="divi";

to check table present in Db
    table must exist    Student

verify row count is 0
    row count is 0    select * from employee.student where RollNo=6123;
verify row count is equal to some value
    row count is equal to x    select * from employee.student where RollNo=6113;    1

verify row count is greater than some value
    row count is greater than x    select * from employee.student where Degree="B.E";   2

verify row count is less than some value
    row count is less than x    select * from employee.student where Degree="B.E";   5

Update a record in student table
    ${output}=  execute sql string    update employee.Student set Name="Jayasri" where RollNo=6113;
    log to console    ${output}
    should be equal as strings      ${output}   ${None}

Retrive a data from a table
    ${var}=     query    select * from employee.Student;
    log to console    ${var}
    #if you want list format
    @{queryResult}=     query    select * from employee.Student;
    log to console  many @{queryResult}

delete records from a table
    ${delete}=  execute sql string    delete from employee.Student;
    #log to console    ${delete}
    should be equal as strings      ${delete}   ${None}