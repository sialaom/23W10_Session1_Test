*** Settings ***
Library           SeleniumLibrary
*** Test Cases ***
Connect to saucedemo.com and close browser
    Log  this is a log line
    Open Browser  https://www.saucedemo.com/  chrome
    Input Text  user-name  standard_user  # Entrez le nom d'utilisateur
    Input Text  password  secret_sauce  # Entrez le mot de passe
    Click Element  css=#login-button
    Sleep  5s  # Attendre 5 secondes
    Wait Until Element Is Visible  css=.inventory_list
    Element Should Be Visible  css=.inventory_list
    Close Browser


