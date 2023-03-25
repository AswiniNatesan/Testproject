*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Multibrowseer Teting
    open browser    https://www.techlistic.com/p/selenium-practice-form.html    chrome
    open browser    https://demowebshop.tricentis.com/register      chrome
    select radio button    Gender   F
    input text  FirstName   Aswini
    input text  name:LastName    Natesan
    input text    Email     aswini123@gmail.com
    input text    name:Password     Ajith123$
    input text    ConfirmPassword   Ajith123$
    sleep    3
    #close browser
    close all browsers
