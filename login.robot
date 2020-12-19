*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิด browser ด้วย chrome
    Open Browser    http://localhost:7272/       chrome 


กรอกข้อมูลลง textfield ตาม id
    [Arguments]    ${ID}    ${TEXT}
    Input Text    id=${ID}    ${TEXT}

กรอกข้อมูลfirstname
    [Arguments]     ${Keyword}
    Input Text   id=username_field   ${Keyword}
กรอกข้อมูลlastnam
    [Arguments]     ${Keyword}
    Input Text   id=password_field    ${Keyword}

กดปุ่ม signup
    Click Button    id=login_button

*** Test Cases ***
TC01 ทดสอบ signup page
    เปิด browser ด้วย chrome
    กรอกข้อมูลfirstname    demo
    กรอกข้อมูลlastname    mode
    กดปุ่ม signup
    Wait Until Page Contains    Welcome Page
