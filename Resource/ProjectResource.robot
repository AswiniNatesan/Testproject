*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login
    [Arguments]    ${url}   ${browser}
    Open browser    ${url}  ${browser}      options=add_argument("--ignore-certificate-errors")
    set selenium speed    2sec
    maximize browser window
    #click element    id:details-button
    #click element    id:proceed-link
    input text      xpath://input[@name="username"]       admin
    input text    name:password     Admin@1234
    click element    xpath://button[contains(text(),'SIGN IN')]


