*** Settings ***


*** Test Cases ***
TC1 Registration
#syntax: [Tags]     keyword
#to run in terminal command: robot --include=TagName filename
# if you want to include many tags name: robot -i tagName -i tagName2
#if you want all tags except one :robot -e tagName (or) robot -exclude tagName
#and we can do one include one exclude :robot -i tagname -e tagname
    [Tags]    SanityTest
    log to console    this is a registration page

TC2 login test
    [Tags]    one
    log to console    this is a login page

TC3 Dashboard test
    [Tags]    Regression
    log to console    this is dashboard page

TC4 Host test
    [Tags]    Sanity Test
    log to console    this is a host page
