#this is example for Page Object Model
*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjectModel/locators.py


*** Keywords ***
To open browser
    open browser    https://demo.guru99.com/test/newtours/index.php     chrome
    maximize browser window
    set selenium speed    1sec
Enter Username
    [Arguments]    ${UserName}
    input text    ${txt_LoginPage_UserName}    ${UserName}

Enter password
    [Arguments]    ${Password}
    input text    ${txt_LoginPage_Password }    ${Password}

click SignIn
    click button    ${BTN_LoginPage_Signin}

To close browser
    close browser

RegiterLink
    click element    xpath://a[contains(text(),'REGISTER')]

To give Firstname
    [Arguments]    ${Firstname1}
    input text    ${First_Name}     ${Firstname1}
To give Lastname
    [Arguments]    ${Lastname1}
    input text      ${Last_Name}      ${Lastname1}
To give PhoneNo
    [Arguments]    ${contact}
    input text      ${Phone}    ${contact}
to give Email
    [Arguments]     ${mail}
    input text      ${Email}    ${mail}

