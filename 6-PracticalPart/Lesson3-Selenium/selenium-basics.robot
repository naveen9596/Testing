*** Settings ***
Library    SeleniumLibrary
Resource    ./keywords/kw.robot
Resource    ./variables/variables.robot
Test Setup    Open Chrome On Artin Homepage
Test Teardown    Close Browser


*** Test Cases ***
Open Artin Homepage
    Wait Until Page Contains    Vyvíjame, integrujeme a testujeme softvér pre najväčších mobilných operátorov, banky, poisťovne a neziskový sektor.

Open Artin Kontakt
    Click Element     id:menu-item-3078
    Wait Until Page Contains    Naše pobočky

Artin Log number of employees
    Navigate to about_persons
    Log Number of Employees

Artin Contact Form -> English Version
    Go To    https://artinsolutions.com
    Click Element    ${menu_career}
    Wait Until Element Is Visible    ${menu_free_positions}
    Click Element    ${menu_free_positions}
    Wait Until Page Contains    Let us know about you
    Fill In Contact Form
