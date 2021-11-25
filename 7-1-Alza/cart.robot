*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://www.alza.sk/EN/    gc
Test Teardown    Close Browser

*** Variables ***
#${computer_and_laptops}    xpath://a[@class='l0-catLink'][text()='Computers and Laptops']
#${laptops}    xpath://a[contains(@class, 'subC') and not(contains(@class, 'subCat'))]//span[text()='Laptops']
${home_and_office}    xpath://a[contains(@class, 'subC') and not(contains(@class, 'subCat'))]//span[text()='Home & Office']
${affordable}    xpath://a[contains(@class, 'subC') and not(contains(@class, 'subCat'))]//span[text()='Affordable']

${best_sellers}    xpath://a[@role='presentation'][text()='Best Sellers']
${third_best}    xpath:(//div[@id='boxes']//div[contains(@class, 'inStockAvailability')])[3]
${add_to_card}    //div[@class='bottom']//a[@class='btnk1']

${proceed_basket}    id:varBToBasketButton
${continue}    id:blockBtnRight
${dont_add_anything}    xpath://span[@class='btnx normal grey js-close-button close-button']

*** Test Cases ***
C311 Adding a specific item via available category filters
    [tags]    runme
    Wait Until Page Contains Element    ${computer_and_laptops}
    Click Element    ${computer_and_laptops}
    Wait Until Page Contains Element    ${laptops}
    Click Element    ${laptops}
    Wait Until Page Contains Element    ${home_and_office}
    Click Element    ${home_and_office}
    Wait Until Page Contains Element    ${affordable}
    Click Element    ${affordable}
    Wait Until Page Contains Element    ${best_sellers}
    Click Element    ${best_sellers}
    Wait Until Page Contains Element    ${third_best}
    Click Element    ${third_best}${add_to_card}
    Wait Until Page Contains Element    ${proceed_basket}
    Click Element    ${proceed_basket}
    Wait Until Page Contains Element    ${continue}
    Click Element    ${continue}
#    Wait Until Page Contains Element    ${dont_add_anything}
#    Click Element    ${dont_add_anything}
    Sleep    10 min
#  /div[contains(@id, 'deliveryContainer')][contains(., 'Personal pickup')]
    Input Text  xpath://      92001
    Press Key    xpath://   ARROW_DOWN

C312 Basket Count
    ${count}    Get Text    xpath://a[@id='basketLink']//span[@class='count']
    # 2
    # if  ...  ${count} > 2
    ${result}     Run Keyword And Return Status    Should Not Be Equal As Integers    ${count}    2
#    IF ${result} > 2

    Sleep    10 s
    ${count}    Get Text    xpath://a[@id='basketLink']//span[@class='count']
    Sleep    5 s
    ${count}    Get Text    xpath://a[@id='basketLink']//span[@class='count']
    Sleep    5 s


C321 Negative
    Go To    https://www.alza.sk/EN/honor-9-lite-midnight-black-d5240693.htm
    Wait Until Page Contains    We apologise, but the product is no longer sold
    Page Should Not Contain Element    xpath://div[@id='cpcm_cpc_tdAmount']//span[@class='text' and text()='Add to Cart']

Cxxx Carousel
    [Tags]    runme
    Wait Until Page Contains Element    xpath://div[@data-item='6225']
    Click Element    xpath://div[@data-item='6225']//button[@aria-label='previous']

Cxxxxx Random element
    Set Variable    ${locator}    xpath:(//li[@class='l0 leftMenuItem hm'])
    ${random_number}    Evaluate    random.randint(1, 19)    random
    Click Element    ${locator}[${random_number}]   #xpath:(//li[@class='l0 leftMenuItem hm'])[3]

    ${elements}    Get WebElements    xpath://li[@class='l0 leftMenuItem hm']
    #  zoznam (list)  s elementami
    ${random_element}    Evaluate    random.choice(${elements})    random
    Click Element    ${random_element}

Cyyyy SORT
    Create List     ${prices}   #prazdny
    Sort from High TO Low
    ${elements}    Get WebElements    xpath://...
    # ${elements}  >>  list
    # [webelement, webelement, webelement....]
    # list, tuple, string
    #  ${elements}    [a, b, c, d]
    #  @{elements}    a   b   c   d
    FOR   ${element}    IN    @{elements}
        Log    ${price}
        ${price}    Get Text    ${element}
        ${price}    Evaluate    float(${price}.split(" ")[0].replace(",", ""))   #  3,43242.22 €
        #  ${price}   343242.22
        Append To List    ${prices}    ${price}
    END
    # ${prices}    [100.22, 100.21, 100.99, ... ]
    # ${prices_sorted}   [100.99, 100.22, 100.21, ... ]
    ${prices_sorted}    Copy List    ${prices}
    Sort List    ${prices_sorted}
    Lists Should Be Equal    ${prices}    ${prices_sorted}

# Get Element Attribute    xpath://     title  [data-rating]
#  4.47/5     float(split("/")[0])



