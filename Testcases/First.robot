*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#this variable we are use again
${link}     chrome
${URL}     https://www.facebook.com/
*** Test Cases ***
#here only the program run first like main function
Facebook
     Open Browser    ${URL}    ${link}
     MAXIMIZE BROWSER WINDOW
     loginTest
     #close browser

*** Keywords ***
# here we can create many functions
loginTest
    input text    name:email    aswini@gmail.com
    input text    name:pass     aswini123
    sleep    2
    click element    name:login





