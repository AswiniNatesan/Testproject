*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LanchBrowser
    [Arguments]    ${appurl}    ${browseurl}
    open browser    ${appurl}  ${browseurl}
    maximize browser window
    ${tittle}=  get title
    [Return]    ${tittle}