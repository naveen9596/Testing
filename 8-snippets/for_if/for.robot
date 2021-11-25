*** Test Cases ***
Standard for loop
    FOR    ${var}    IN    a    b    c    d
        Log    ${var}
        Log    test
    END
    Log    End