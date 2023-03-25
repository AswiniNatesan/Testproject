*** Settings ***
Library    SeleniumLibrary
#this is to use another file code into this file like modules in python
Resource    ../Resource/resources.robot

*** Variables ***
${URL}  https://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
testcase1
    ${PageTitle}=   LanchBrowser    ${URL}  ${browser}
    log to console    ${PageTitle}
    #if we want to see in report file table header should contain
    log    ${PageTitle}
    input text    name:userName     Mercury
    input text    password      Mercury


