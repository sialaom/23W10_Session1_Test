*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***
${url}      https://www.saucedemo.com/
${username}     standard_user
${password}     secret_sauce

*** Test Cases ***
Login and Verify Products
    Open Browser    ${url}     chrome
    Input Text      id=user-name     ${username}
    Input Text      id=password     ${password}
    Click Button    id=login-button
    ${product_names} =    Get WebElements    class:inventory_item_name
    ${product_names_text} =     Create List
    FOR    ${product}    IN    @{product_names}
        ${text} =    Get Text    ${product}
        Append To List     ${product_names_text}     ${text}
    END
    ${unique_prodcut_names}=    Remove Duplicates    ${product_names_text}
    Should Be Equal As Strings    ${unique_prodcut_names}    ${product_names_text}

    Close Browser
