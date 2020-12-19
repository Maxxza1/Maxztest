*** Settings ***
Library   SeleniumLibrary
Test Teardown  Close Browser

*** Variables ***
${URL}    http://google.com
${expected_result}    อยู่ที่ประมาณ 30,000-45,000

*** Keywords ***
เปิดเว็บ google.com ด้วย Chrome
    Open Browser     ${URL}    Chrome
ค้นหาคำว่า
    [Arguments]     ${Keyword}
    Input Text   name=q    ${Keyword}
    Capture Page Screenshot
    Submit Form
    Capture Page Screenshot

ขอผลลัพธ์
    Wait Until Page Contains   ${expected_result}

*** Test Cases ***
SC01_TC01_Search cases
    เปิดเว็บ google.com ด้วย Chrome
    ค้นหาคำว่า  Tester จบใหม่ เงินเดือน
    ขอผลลัพธ์

