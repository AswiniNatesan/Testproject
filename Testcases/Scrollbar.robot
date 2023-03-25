*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingWindow
    open browser    https://www.countries-ofthe-world.com/      chrome
    maximize browser window
    #execute javascript    window.scrollTo(0,250)
 #this will help to scroll particular element that we should give
    scroll element into view    xpath:/html/body/div[1]/div[2]/div[2]/div/div[2]/ul[2]/li[2]/a
 #this is help to scroll at the end of the page
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    3
 #to go to the top of the page
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
