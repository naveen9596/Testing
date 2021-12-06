*** Settings ***
Test Template    Simple Data Driven Keyword


*** Keywords ***
Simple Data Driven Keyword
    [Arguments]    ${num1}    ${num2}    ${res}
    ${res_inner}    Evaluate    int(${num1}) + int(${num2})
    Log    Vysledok je: ${res}
    Should Be Equal As Integers    ${res_inner}    ${res}

*** Test Cases ***    NUMBER1    NUMBER2    RESULT
test1                       1          2         3
test2                      10         20        30