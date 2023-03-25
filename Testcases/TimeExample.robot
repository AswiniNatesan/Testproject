*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
SpeedTest
   # ${speed}=   get selenium speed
    #log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    #set browser implicit wait   #this is also like as page contains
    #set selenium timeout    10sec
    wait until page contains    Register    #it will wait for 5sec if the name is not there(i.e.Register)
    #set selenium speed    3sec
    #RegTest
    TimeOutTesting

*** Keywords ***
RegTest
    select radio button    Gender   F
    input text  FirstName   Aswini
    input text  name:LastName    Natesan
    input text    Email     aswini123@gmail.com
    input text    name:Password     Ajith123$
    input text    ConfirmPassword   Ajith123$
    #click element    register-button
 #this will help the confirmation of how much time is taking
    ${speed}=   get selenium speed
    log to console    ${speed}

TimeOutTesting
    select radio button    Gender   F
    input text  FirstName   Aswini
    input text  name:LastName    Natesan
    input text    Email     aswini123@gmail.com
    input text    name:Password     Ajith123$
    input text    ConfirmPassword   Ajith123$



