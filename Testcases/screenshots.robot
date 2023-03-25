*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#this variable we are use again
${link}     chrome
${URL}     https://www.google.com/

*** Test Cases ***
screenshots and mouse actions
    #loginTest
    MouseActions

*** Keywords ***
loginTest
    open browser    ${url}  ${link}
    maximize browser window
    capture element screenshot    xpath:/html/body/div[1]/div[2]/div/img    logo.png
    capture page screenshot    google1.png

MouseActions
    open browser    https://www.facebook.com    ${link}
    maximize browser window
#this will do right click option
    open context menu    xpath:/html/body/div[1]/div[1]/div[1]/div/div/div/div[2]/div/div[1]/form/div[1]/div[1]/input
    sleep   3
    click element    xpath:/html/body/div[1]/div[1]/div[1]/div/div/div/div[2]/div/div[1]/form/div[1]/div[1]/input
#double click operation
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath:/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[4]/div[3]/div/aside/div/div[1]/div[1]/button
    sleep    2
    go back
    sleep   2

#Drag and drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    #box5-box105
    drag and drop    id:box5    id:box105
    sleep    3
    close browser
