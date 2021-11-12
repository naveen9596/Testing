# Test structure
*** Settings ***
Library    OperatingSystem
Test Setup    Log    Test Setup
Test Teardown    Log    Test Teardown
Suite Setup    Log    Suite Setup
Suite Teardown    Log    Suite Teardown
Default Tags    sk    skip
Metadata    Version    2.0
Metadata    More info    ....
Documentation    just a basic simple Documentation
...
...              on a multiple rows
...              | dsfadfa | fdsfasdf |
...
...              with *bold* and _italic_


*** Variables ***
${variable1}    abc
${variable2} =   abc

*** Test Cases ***
Test case nr 1
    [Setup]    Log    Setup
    [Teardown]    Log    Teardown
    [Timeout]    2 sec
    Log    Test case nr 1
    File Should Exist    ${CURDIR}${/}slides.md
    Set Test Variable    ${local}    local data
    Sleep    10 s
    Log    ${local}
    Log    ${variable1}

Test case nr 2
    Log    Test case nr 2
    Log    ${variable1}
    Log    ${local}

Test cases nr 3
    Log    Test case nr 3
    ${env}    Get Environment Variables
    Log    ${variable2}
    Log    ${env}
    Log    ${env}[VIRTUAL_ENV]
    Log    ${env['VIRTUAL_ENV']}
