*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${username}        standard_user
${password}        secret_sauce
*** Test Cases ***
Ajout d'un produit au panier et vérification
    [Documentation]  Ajoute un produit au panier et vérifie que le produit a été ajouté avec succès.
    Open Browser    ${url}    chrome
    Wait Until Page Contains Element    id=user-name
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login-button
    Wait Until Page Contains Element    id=add-to-cart-sauce-labs-backpack
    Click Button    id=add-to-cart-sauce-labs-backpack
    Wait Until Page Contains Element    id=remove-sauce-labs-backpack
    Sleep    10
    ${remove_button}=    Get WebElement    id=remove-sauce-labs-backpack
    ${remove_button_text}=    Get Text    ${remove_button}
    Should Contain    ${remove_button_text}    Remove
    Close Browser
