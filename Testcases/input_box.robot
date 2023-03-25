*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${URL}      https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    OPEN BROWSER    ${URL}  ${browser}
    MAXIMIZE BROWSER WINDOW
# verify the Tittle of the page
    title should be    nopCommerce demo store
#here we are give either click element(full xpath) or click link(xpath) that would be same
#click link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    click element   xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email_txt_box"}  set variable    id:Email
#visiblity status & enabled status
    element should be visible   ${"email_txt_box"}
    element should be enabled   ${"email_txt_box"}
#input text    element(var)    value(provide value)
    input text  ${"email_txt_box"}  aswini@gmail.com
# to wait for the page
    sleep    2
    clear element text  ${"email_txt_box"}
    #close browser

*** Keywords ***

