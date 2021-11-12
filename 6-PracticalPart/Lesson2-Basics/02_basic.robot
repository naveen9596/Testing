*** Test Cases ***
Moj prvy test test2
    [Documentation]    toto je nejaky zakladny popis testu
    ...                toto je 2 riadok
    [Tags]    regression    full
    Set Log Level    TRACE
    Fail
    Log    Hello, world!    level=TRACE
    Log    Log2

Moj druhy test test2
    [Documentation]    toto je nejaky zakladny popis testu 2
    [Tags]    smoke    full    in-progress
    Fail    NOn-critical / In-progress
    Log    Moj druhy test    level=DEBUG