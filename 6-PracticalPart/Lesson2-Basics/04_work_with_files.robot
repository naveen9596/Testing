*** Settings ***
Library    OperatingSystem
Documentation    Suite level dokumentacia
Metadata     VERSION    1.0
Metadata     NAME    Tomas
Default Tags    regression

*** Variables ***
${AHOJ} =   Ahoj, svet!
${AHOJ2}   Ahoj, svet2!
${PATH_TO_LIBRARY}    /a/b/c/d

*** Test Cases ***
Praca s variable
    Log    ${AHOJ}
    Log    c:${/}AHOJ${/}svet   # c:\AHOJ\svet    / / /
    Log    ${CURDIR}
    Log    ${EXECDIR}
    Log    ${TEST NAME}
    Log    ${SUITE NAME}
    Log    ${SUITE_NAME}
    Set Global Variable    ${GLOBAL_VAR}    Globalna variable
    Set Test Variable      ${test_praca_var}    Praca s variables
    Set Local Variable     ${test_local_var}    Praca s local
    Set Suite Variable     ${test_SUITE_var}    Suite variable
    ${var}    ahoj

Vytvor subor test_automation_academy.txt
    [Documentation]    simple test
    Log    ${AHOJ}
    Create File    test_2.txt    hello, world!