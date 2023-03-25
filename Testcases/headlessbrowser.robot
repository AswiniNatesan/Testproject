*** Settings ***
Library    SeleniumLibrary
#headless browser can help we can't see the UI it will run only the backend

*** Test Cases ***
newone
    open browser    https://www.google.com/     headlesschrome
    close browser