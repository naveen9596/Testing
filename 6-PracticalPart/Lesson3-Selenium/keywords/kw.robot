*** Keywords ***
Open Chrome On Artin Homepage
    Open Browser    https://www.artin.sk    gc
    Maximize Browser Window
    Wait Until Page Contains    Tvoríme IT riešenia     10 sec

Navigate to about_persons
    Click Element     ${menu_onas}
    Wait Until Page Contains    ARTIN Solutions je spoločnosť poskytujúca profesionálne IT služby už viac ako 13 rokov
    Wait Until Page Contains Element    ${about_persons}
    Sleep    5 s

Log Number of Employees
    ${cislo}    Get Text    ${about_persons}
    Log    Pocet zamestnancov: ${cislo}

Fill In Contact Form
    Input Text    ${contact_form_name}    Dr
    Input Text    ${contact_form_surname}    Who
    Input Text    ${contact_form_phone}    3424134
    Input Text    ${contact_form_message}    The Weeping Angels were an extremely powerful species of quantum-locked humanoids (sufficient observation changes the thing being observed), so called because their unique nature necessitated that they often covered their faces with their hands to prevent trapping each other in petrified form for eternity by looking at one another.
    Input Text    ${contact_form_linkedin}   https://www.google.sk
    Click Element    ${contact_form_agree}
    Click Element    ${contact_form_send}
    Wait Until Page Contains    Please verify that you are not a robot.
    Wait Until Page Contains    Some fields contain an error. Please correct the entered information and try again.


