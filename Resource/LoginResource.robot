#this resource will help using main testcase
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome
*** Keywords ***
To OpenBrowser
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    1sec
To CloseBrowser
    close browser
UserNameTest
    [Arguments]    ${username}
    input text  id:user-name  ${username}
PasswordTest
    [Arguments]    ${password}
    input text  id:password    ${password}
LoginTest
    click element    login-button



