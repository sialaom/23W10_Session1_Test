*** Settings ***
Library           SeleniumLibrary
Library           Collections

*** Variables ***
${url}            https://www.saucedemo.com/
${username}        standard_user
${password}        secret_sauce

*** Test Cases ***
Test de connexion, ajout et suppression de produit du panier
    [Documentation]    Teste la connexion à la page Saucedemo, l'ajout et la suppression de produit du panier.
    Open Browser    ${url}    chrome
    Wait Until Page Contains Element    id=user-name
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login-button
    Wait Until Page Contains Element    id=add-to-cart-sauce-labs-backpack
    Click Button    id=add-to-cart-sauce-labs-backpack
    Wait Until Page Contains Element    id=remove-sauce-labs-backpack
    Click Button    id=remove-sauce-labs-backpack
    Wait Until Page Contains Element    id=add-to-cart-sauce-labs-backpack
    ${remove_button_text}=    Get Text    id=add-to-cart-sauce-labs-backpack
    Should Be Equal As Strings    ${remove_button_text}    Add to cart
    Close Browser
