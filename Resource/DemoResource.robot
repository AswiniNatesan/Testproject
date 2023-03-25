*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://itera-qa.azurewebsites.net/home/automation

*** Keywords ***
ToOpenBrowser
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1sec

ToCloseBrowser
    close browser
FirstName Test
    [Arguments]    ${Firstname}
    input text    name       ${Firstname}
MobileNo Test
    [Arguments]    ${mobile}
    input text    id:phone       ${mobile}

Email Test
    [Arguments]    ${mail}
    input text    id:email      ${mail}

Password Test
    [Arguments]    ${pass}
    input text    id:password   ${pass}

Address Test
    [Arguments]    ${address}
    input text    id:address    ${address}

submit Test
    click button    name:submit

Checkbox Test
    [Arguments]    ${value}
    scroll element into view    xpath:/html/body/div/div[3]/div[2]/label[2]
    select checkbox     ${value}



