*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/DemoResource.robot


*** Variables ***
${Firstname}    Aswini
${mobileno}     12345
${mail}     aswini@1234
${pass}     Aswini@123
${address}      this is a good software to test automation
*** Test Cases ***
signup test
    [Tags]    Login
    ToOpenBrowser
    ToCloseBrowser
    FirstName Test      ${Firstname}
    MobileNo Test       ${mobileno}
    Email Test      ${mail}
    Password Test   ${pass}
    Address Test    ${address}
    submit Test

buttons test
    [Tags]    buttons
    Checkbox Test    id:monday
    Checkbox Test    id:wednesday





