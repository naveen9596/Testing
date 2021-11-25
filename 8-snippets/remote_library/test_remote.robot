*** Settings ***
Library     Remote    localhost:5005


*** Test Cases ***
Test of remote library
    ${res}    Get Os Name
    Log    ${res}