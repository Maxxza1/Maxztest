*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิด browser ด้วย chrome
    Open Browser    https://www.kimschiller.com/page-object-pattern-tutorial/       chrome 


กรอกข้อมูลลง textfield ตาม id
    [Arguments]    ${ID}    ${TEXT}
    Input Text    id=${ID}    ${TEXT}

กรอกข้อมูลfirstname
    [Arguments]     ${Keyword}
    Input Text   id=firstname    ${Keyword}
กรอกข้อมูลlastname
    [Arguments]     ${Keyword}
    Input Text   id=lastname    ${Keyword}
กรอกข้อมูลaddress
    [Arguments]     ${Keyword}
    Input Text   id=address    ${Keyword}
กรอกข้อมูลzipcode
    [Arguments]     ${Keyword}
    Input Text   id=zipcode   ${Keyword}
กดปุ่ม signup
    Click Button    id=signup

*** Test Cases ***
TC01 ทดสอบ signup page
    เปิด browser ด้วย chrome
    กรอกข้อมูลfirstname     kantapat
    กรอกข้อมูลlastname    chatsoponpan
    กรอกข้อมูลaddress     713/8
    กรอกข้อมูลzipcode     10260
    กดปุ่ม signup
    Wait Until Page Contains    Thank you!
    [Teardown]   Close Browser