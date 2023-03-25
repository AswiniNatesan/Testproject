*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/LoginResource.robot
#Library    DataDriver    ../ExcelFiles/LoginData.xlsx
Library    DataDriver    ../ExcelFiles/LoginData1.csv
Suite Setup    To OpenBrowser
Suite Teardown    To CloseBrowser
Test Template    InvalidKeys


*** Test Cases ***
Ecommerceapp



*** Keywords ***
InvalidKeys
    [Arguments]    ${User}  ${Pwd}
    UserNameTest    ${User}
    PasswordTest    ${Pwd}
    LoginTest