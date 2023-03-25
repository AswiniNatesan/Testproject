*** Settings ***
Library  SeleniumLibrary
Resource    ../Resource/ProjectResource.robot
Suite Setup     Login   ${url}      ${browser}

*** Variables ***
${browser}  chrome
${url}  https://15.207.106.196/
${upload_file}      indicator_file
${add_file}     C:/Users/ASM/Downloads/new.txt

*** Test Cases ***
Host enter tag
    [Tags]    host
    click element    xpath://*[@id="Hosts"]/a
    click element    xpath://a[contains(text(),'INBGNL0348')]
    click element    xpath://a[contains(text(),'Tags')]
    ${name}=    input text    xpath://*[@id="additional_packs_query_tags"]/div[1]/div/div/tag-input/div/div/tag-input-form/form/input   AswiniNatesan      #error
    press keys    ${name}   ENTER
    click element    xpath://*[@id="kt_page_portlet"]/div[1]/div/div/div/span[1]/img
    reload page
Search host
    [Tags]    host
    ${search}=  input text    xpath://input[@id='customsearch']     AswiniNatesan
    press keys      ${search}   ENTER


Hunt
    [Tags]    hunt
    click element    xpath://*[@id="Hunt"]/a
    #Choose File     ${upload_file}  ${add_file}
    click element    xpath://*[@id="md5form"]/div[1]/div/div/div/angular2-multiselect/div/div[1]/div
    input text      xpath://input[@placeholder="Search Hunt Type here.."]    Md5
    click element    xpath://label[contains(text(),'MD5')]
    choose file     ${upload_file}      ${add_file}
    click button    xpath://button[@type="submit"]
ER Rules
    [Tags]    rules
    click element    xpath://*[@id="Rules"]/a/i
    click element    xpath://span[contains(text(),'ER Rules')]
    click button    xpath://*[@id="kt_wrapper"]/div/div[1]/div[2]/div/div/appbutton/button
    input text    id:name   New ER rule
    input text    xpath://*[@id="frmData"]/div/div/div[1]/div[1]/div/div[2]/div/textarea     nothing
    click element    xpath://*[@id="frmData"]/div/div/div[1]/div[1]/div/div[3]/div/angular2-multiselect/div/div[1]/div
    input text    xpath://input[@placeholder="Search alerts here.."]        email
    click element    xpath://label[contains(text(),'email')]
    click element    xpath://label[contains(text(),'Alerters')]
    click element    xpath://div[contains(text(),'------')]
    click element    xpath://div[contains(text(),'------')]
    click element   xpath://span[contains(text(),'Query Name')]
    input text    name:query-builder_rule_0_value_0     windows_real_time_event
    click button    xpath://button[@id='submit-button']

ScreenShots:
    #to take a screen shots
    capture page screenshot     ER Rule.png

Livequery test
    [Tags]    Livequery
    click element    xpath://*[@id="live-queries"]/a
    input text    xpath://ace-editor//textarea      Select * from win_socket_events;
    click element    xpath://span[contains(text(),'Select by Hosts')]
    input text    xpath://input[@placeholder="Search host here.."]      INBGNL0348
    click element    xpath://label[contains(text(),'INBGNL0348')]
    click button    xpath://button[@type="submit"]


Queries To Livequery
    [Tags]    Query
    click element    xpath://*[@id="HostConfiguration"]/a/i
    click element    xpath://span[contains(text(),'Queries')]
    click element    xpath://div[contains(text(),'AuditSpecialGroups')]
    click button    xpath://button[contains(text(),'Run Live')]
    #In Live query
    click element    xpath://span[contains(text(),'Select by Hosts')]
    input text    xpath://input[@placeholder="Search host here.."]    INBGNL0348
    click element       xpath://label[contains(text(),'INBGNL0348')]
    click button    xpath://button[@type="submit"]
    click element    xpath://a[contains(text(),'Results')]
    scroll element into view    xpath://div[@id='live_query_table_info']
    close browser

Add Query
    [Tags]    Add
    click element    xpath://*[@id="HostConfiguration"]/a/i
    click element    xpath://span[contains(text(),'Queries')]
    click button    xpath://button[@tabindex="0"]
    input text    xpath://input[@id='name']     sample1
    input text    xpath://textarea[@spellcheck="false"]     Select * from users;
    input text    xpath://input[@id='version']      3.0
    input text    xpath://textarea[@id='description']       nothing
    input text    xpath://textarea[@formcontrolname="value"]      nothing
    input text    xpath://textarea[@name="tags"]    Aswini123
    click button    xpath://button[@type="submit"]
    wait until page contains element    Queries

Search Query
    [Tags]      Add
    click element    xpath://a[contains(text(),'All Queries')]
    ${inp}=     input text    //input[@id='customsearch']       sample1
    press keys      ${inp}      ENTER











