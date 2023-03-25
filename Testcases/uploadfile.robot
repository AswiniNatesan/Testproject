*** Settings ***
Library    SeleniumLibrary
Library    os

*** Variables ***
${browser}      chrome
${url}      https://testautomationpractice.blogspot.com/
${upload_file}      RESULT_FileUpload-10
${add_file}     C:/Users/ASM/Downloads/kathija.txt

*** Test Cases ***
UploadFile Testing
    open browser    ${url}  ${browser}
    maximize browser window
    select frame    id:frame-one1434677811
    Choose File     ${upload_file}  ${add_file}
    