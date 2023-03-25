*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
enter test
    open browser    https://www.google.com/     chrome
    maximize browser window
    ${inp}=     input text    name:q    pets image
    press keys    ${inp}     ENTER

    #copy paste
    ${copy}=    get text    xpath://h3[contains(text(),'Images for pets')]
    input text    name:q    ${copy}
