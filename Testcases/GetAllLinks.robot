*** Settings ***
Library    SeleniumLibrary
#Count No of Links on Web page
#Extract all the links from the page

*** Variables ***
${Url}  https://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
Testing
    GetAllLinksTest


*** Keywords ***
GetAllLinksTest
    open browser    ${Url}  ${browser}
    maximize browser window
    ${count}=   get element count    xpath://a
    log to console    ${count}

     @{LinkItems}    create list
     FOR    ${i}    IN RANGE    1   ${count}+1
     ${Names}=  get text   xpath:(//a)[${i}]
     log to console    ${Names}
     Exit for loop if    ${i}==5
     END
