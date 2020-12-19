*** Settings ***
Library

*** Variables ***


*** Test Cases ***
#Assigning scalar variables
TC01 Returning from function
    [Tags]  TC01
    ${x} =    Set Variable    hello
    Log    We got ${x}!
    Log To Console    ${x}

TC02 Create list assign to scalar variable
    [Tags]  TC02
    ${list} =    Create List    first    second    third
    Length Should Be    ${list}    3
    Log To Console    ${list}
    Log Many    @{list}

#Assigning list variables
TC03 Create list assign to list variable
    [Tags]  TC03
    @{list} =    Create List    first    second    third
    Length Should Be    ${list}    3
    Log To Console    ${list}       #['first', 'second', 'third']
    Log Many    @{list}

*** Keywords ***
