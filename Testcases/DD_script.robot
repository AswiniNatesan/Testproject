*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/LoginResource.robot
Suite Setup     To OpenBrowser
Suite Teardown      To CloseBrowser
Test Template   InvalidKeys

*** Test Cases ***
                                #Username       password
Valid username empty pass       standard_user   ${EMPTY}
Valid username invalid pass     standard_user       xyz
Invalid username valid pass     xys     secret_sauce
Empty username valid pass       ${EMPTY}    secret_sauce
Valid username valid pass       standard_user   secret_sauce


*** Keywords ***
InvalidKeys
    [Arguments]    ${User}  ${Pwd}
    UserNameTest    ${User}
    PasswordTest    ${Pwd}
    LoginTest

