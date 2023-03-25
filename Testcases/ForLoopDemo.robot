*** Settings ***
Library    SeleniumLibrary
#Syntax: : FOR  ${i}    IN RANGE   1   10
#               .....
#                END
*** Test Cases ***
#ForLoopTest
#    FOR     ${i}    IN RANGE    10
#    log to console  ${i}
#    END


#ForLoopTest2
#if i will give nums in 1 space then it will print the same line
    #FOR    ${i}     IN  1   2   3   4   5   6   7       #here the values will print in new line
    #log to console    ${i}
    #END

#ForLoopTest3withList
#Now we create Python list in for loop
#list variable is starts with @{}
#    @{items}    create list    1    2   3   4
#    log to console    @{items}
#    FOR     ${i}    IN      @{items}
#    log to console    ${i}
#    END


#ForLoopString
#    FOR    ${strings}   IN  Hello every one
#    log to console    ${strings}
#    END

#ForLoopString
#    @{items}    create list     Aswini  muthu   jayasri     Haru
#    FOR    ${strings}   IN  @{items}
#    log to console    ${strings}
#    END

ForLoopWithExit
    @{items}    create list    1    2   3   4
#   log to console    @{items}
    FOR     ${i}    IN      @{items}
    log to console    ${i}
    exit for loop if    ${i}==3
    END


