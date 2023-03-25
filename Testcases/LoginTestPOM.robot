*** Settings ***
Library    SeleniumLibrary
Resource    ./Resource/POMLogin.robot
Suite Setup    To open browser
Suite Teardown    To close browser

*** Variables ***
${User}     tutorial
${Pwd}      tutorial
${FN}       Aswini
${LN}       Natesan
${ph}       123456
${e-mail}   aswini@123.com
*** Test Cases ***
Mercury
    LoginTesting
    Registration

*** Keywords ***
LoginTesting
    Enter Username  ${User}
    Enter password  ${Pwd}
    click SignIn

Registration
    RegiterLink
    To give Firstname   ${FN}
    To give Lastname    ${LN}
    To give PhoneNo     ${ph}
    to give Email   ${e-mail}
