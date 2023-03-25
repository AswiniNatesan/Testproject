#ALERTS
#Syntax :close alert using ok button:#handle alert    accept
#close alert using cancel button:#handle alert    dismiss
#to stay the alert in that page: #handle alert    leave
#FRAMES
#syntax:#select frame,#unselect frame {once one frame is open then we want open another one then we close (unselect) previous frame
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${URL}  https://testautomationpractice.blogspot.com/
${URL1}     https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Alerts and Frames
    #Open Browser    ${url}  ${browser}
    open browser    ${URL1}     ${browser}
    maximize browser window
    #HandlingAlerts
    TestingFrames

*** Keywords ***
HandlingAlerts
     #opens alerts
    click element    xpath:/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[4]/div[2]/div/aside/div/div[2]/div[1]/button
    sleep   2secs
#close alert using ok button
    #handle alert    accept
#to close alert using cancel button
    #handle alert    dismiss
#to stay the alert in that page
    #handle alert    leave
#to verify the alert msg is present in that window
    alert should be present    Press a button!
    #alert should not be present    Press a button!     -->negative command it throws error

TestingFrames
    select frame    name:packageListFrame
    click link    org.openqa.selenium.cli
    unselect frame
    sleep    2

    select frame    packageFrame
    click link    xpath:/html/body/main/div/section[2]/ul/li/a
    unselect frame

    sleep    2
    select frame    classFrame
    click link      xpath:/html/body/header/nav/div[1]/div[1]/ul/li[8]/a




