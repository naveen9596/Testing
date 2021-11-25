*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser On Google Page
Test Teardown    Close Browser

*** Keywords ***
Open Browser On Google Page
    Open Browser    https://www.google.com    gc
    Wait Until Page Contains Element    id:L2AGLb
    Click Element    id:L2AGLb

*** Test Cases ***
4: Press Enter from the text box
    Click Element    name:q
    Input Text    name:q    what is an Apple
    Press Keys    name:q    ENTER
    # Treba konkretne dodefinovat , ktore elementy splnaju poziadavku
    Wait Until Page Contains    Apple - Wikipedia
    Wait Until Page Contains   apple - Dictionary Definition : Vocabulary.com

6: Invalid value in the search text box
    Click Element    name:q
    Input Text    name:q    @#$%^
    Press Keys    name:q    ENTER
    Wait Until Page Contains    did not match any documents
    Page Should Contain    Make sure that all words are spelled correctly.
    Page Should Contain    Try different keywords.
    Page Should Contain    Try more general keywords.

13: Language
    [Tags]    runme
    ${lang_home}    Get Text    xpath://div[@id='SIvCob']//a
    Go To    https://www.google.com/preferences?hl=en-SK&fg=1#languages
    ${lang_settings}    Get Text    xpath://div[@id='langtop']//div[@aria-checked='true']//span[contains(@class, 'label')]
    Should Be Equal As Strings    ${lang_home}    ${lang_settings}

13: Redirection to other Google page
    Click Element    xpath://a[@aria-label='Google apps']
    Select Frame    xpath://iframe    # context sa zmeni na Iframe
#    Unselect Frame   # vyskoci z iframe
    Wait Until Page Contains Element    xpath://span[text()='YouTube']
    Click Element    xpath://span[text()='YouTube']
    Wait Until Location Is    https://www.youtube.com/
    Wait Until Page Contains    Subscriptions

PERF: 1: Open multiple tabs/browsers
    Execute Javascript    window.open('')
    Switch Window    title=undefined
    Go To   https://www.google.com

    Execute Javascript    window.open('')
    Switch Window    title=undefined
    Go To   https://www.google.com

    Switch Window    MAIN



