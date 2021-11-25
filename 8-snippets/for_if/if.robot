*** Variables ***
${number}    ${10}

*** Test Cases ***
Usage of if
    IF    ${number} > 10
        Pass Execution
    ELSE IF    ${number} < 10
        Fail
    ELSE IF    ${number} == 10
        Log    10
    END