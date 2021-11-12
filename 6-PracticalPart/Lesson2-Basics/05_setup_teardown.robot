*** Settings ***
Test Setup    Log    ${TEST_NAME}
Test Teardown    Log    Test Teardown


*** Test Cases ***
Moj test 1
    [Setup]    Log    Ahoj lokalny setup
    Log   Ahoj

Moj test 2
    Log   Ahoj
    Fail

Moj test 3
    Log   Ahoj

