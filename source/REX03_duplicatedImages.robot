*** Settings ***
Library           SeleniumLibrary
Library    Collections
*** Variables ***
${url}            https://www.saucedemo.com/
${username}        problem_user
${password}        secret_sauce
*** Test Cases ***
Test de connexion avec vérification des images des produits
    [Documentation]    Teste la connexion à la page Saucedemo et vérifie que la liste des images des produits n'est pas dupliquée.
    Open Browser    ${url}    chrome
    Wait Until Page Contains Element    id=user-name
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login-button
    Wait Until Page Contains Element    class=inventory_item_img
    @{images}=    Get WebElements    class=inventory_item_img
    ${images_list}=    Create List
    FOR    ${image}    IN    @{images}
        ${image_src}=    Get Element Attribute    ${image}    src
        Run Keyword If    '${image_src}' != '' and '${image_src}' != 'None'    Append To List    ${images_list}    ELSE    Log    'Skip Empty or None Values'

    END
    Log    ${images_list}
    ${unique_images}=    Remove Duplicates    ${images_list}
    Should Be Equal As Strings    ${images_list}    ${unique_images}
    Close Browser
