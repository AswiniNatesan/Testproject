*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
TableTesting
    open browser    ${url}  ${browser}
    maximize browser window
    ${Rows}=   get element count   //body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr
    log to console    ${Rows}
    ${column}=  get element count    //body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr/th
    log to console    ${column}

    ${data}=    get text    //body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr[5]/td[3]
    log to console    ${data}
    ${fulltable}=   get text    //body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody
    log to console    ${fulltable}
    #to verify datas
    table column should contain     xpath://table[@name='BookTable']    2   Author
    table row should contain    xpath://table[@name='BookTable']    5   Master In Selenium
    table header should contain    xpath://table[@name='BookTable']     Price
    table cell should contain       xpath://table[@name='BookTable']    1   4   Price
    