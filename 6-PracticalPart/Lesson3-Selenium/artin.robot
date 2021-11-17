*** Settings ***
Library    SeleniumLibrary
Resource    ./keywords/kw.robot
Resource    ./variables/variables.robot
Test Setup    Open Chrome On Artin Homepage
Test Teardown    Close Browser

*** Test Cases ***
Find Free Positions
    Go To    https://artinsolutions.com
    Click Element    ${menu_career}
    Wait Until Element Is Visible    ${menu_free_positions}
    Click Element    ${menu_free_positions}
    Wait Until Page Contains    Test Automation Engineer (Python)
    Click Element    ${ta_show_more}
    Click Link    ${write_us}
    Wait Until Location Is    https://www.artinsolutions.com/career-contact-2/?contactid=4700