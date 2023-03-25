*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${URL}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
RadioButtons Checkboxes Dropdown listboxes
    Open Browser    ${URL}  ${browser}
    maximize browser window
#insteed of we are giveing every time sleep we wiil give simple command like set selenium set selenium speed
    #set selenium speed    1seconds
    TestingRadioButtons
    TestingCheckboxs
    DropdownTest
    ListboxTest
    #close browser

*** Keywords ***
TestingRadioButtons
#selecting radio buttons
     select radio button    sex    Female
     select radio button    exp    3
TestingCheckboxs
#Selecting check box
#here pls give unique value either name or value from html code if name is common value for all checkbox then give value
#error:select checkbox    profession     (because name is common for all checkboxes)
    select checkbox     Automation Tester
    sleep    3
    select checkbox     Manual Tester
    select checkbox    QTP
    select checkbox    Selenium IDE
    select checkbox    Selenium Webdriver
    unselect checkbox    QTP



DropdownTest
#5) Drop down and List Box
#In this drop down we select one value
    select from list by label    continents     North America
    sleep    2
#here give index value (the index value is starts with 0)
    select from list by index   continents  2
    sleep    3

ListboxTest
# select from list by value    name  value
#In this drop down we select many values
    select from list by label    selenium_commands      Wait Commands
    select from list by index    selenium_commands      1
    select from list by label    selenium_commands      Switch Commands
    sleep   2
    unselect from list by index    selenium_commands    1


