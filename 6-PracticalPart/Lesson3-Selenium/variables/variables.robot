*** Variables ***
${variable_1}    Ahoj
${menu_onas}    id:menu-item-3084
${about_persons}     xpath://div[@class="about persons"]/h4
${menu_career}    id:menu-item-3125
${menu_free_positions}    id:menu-item-3097

${contact_form_base}    xpath://form[contains(@action, 'o2')]
${contact_form_name}    ${contact_form_base}//input[@name='your-name']
${contact_form_surname}    ${contact_form_base}//input[@name='your-surname']
${contact_form_phone}    ${contact_form_base}//input[@name='intl_tel-500-cf7it-national']
${contact_form_message}    ${contact_form_base}//textarea[@name='your-message']
${contact_form_linkedin}    ${contact_form_base}//input[@name='linkedin']
${contact_form_agree}    ${contact_form_base}//input[@name='acceptance-133']
${contact_form_send}    ${contact_form_base}//input[@value='Send']

${ta_show_more}    xpath=//div[@class='mixitup targets']//div[contains(., 'Test Automation Engineer')]//a[text()='Show more']
${write_us}    xpath=//a[text()='WRITE US']