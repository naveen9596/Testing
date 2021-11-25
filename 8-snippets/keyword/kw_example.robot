*** Settings ***
Library    keywords.py
Library    KeywordClass.py    test

*** Test Cases ***
Only Test of kw
    ${res}    Only Log
    Log    Result from ONLY LOG: ${res}
    My Own Keyword