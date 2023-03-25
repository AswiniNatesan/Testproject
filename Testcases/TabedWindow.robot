*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${link}     chrome
${URL}  https://demo.automationtesting.in/Windows.html

*** Test Cases ***
WindowsTesting
    #TabedWindow Testing
    MultipleBrowser Testing
    #Totest GoTo GoBack GetLocation

*** Keywords ***
TabedWindow Testing
    open browser    ${URL}  ${link}
    maximize browser window
    click element    xpath:/html/body/div[1]/div/div/div/div[2]/div[1]/a/button
    #this will help to switch another tab(switch window)
    switch window   Selenium
    click element    xpath:/html/body/header/nav/div/ul/li[3]/a/span
    sleep    3
    switch window    Frames & windows
    close browser
MultipleBrowser Testing
    open browser    https://www.google.com/     ${link}
    maximize browser window
    sleep    3
    open browser    https://www.facebook.com/   ${link}
    maximize browser window

    switch browser    1
    ${title1}=  get title
    log to console    ${title1}
    sleep    2
    #switch browser  2
    #${title2}=  get title
    #log to console    ${title2}
    #sleep    2
    #switch browser    1
    input text    q     pets
    close all browsers
Totest GoTo GoBack GetLocation
#this will do action in one tab
    open browser    https://www.google.com/     ${link}
    ${loc}=     get location
    log to console    ${loc}
    go to   https://www.facebook.com/
    ${loc}=     get location
    log to console    ${loc}
    go back
    ${loc}=     get location
    log to console    ${loc}
    close browser

