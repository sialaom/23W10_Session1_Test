*** Settings ***
Library    SeleniumLibrary
*** Variables ***
##### scalable variables #####
${url} =  https://www.saucedemo.com/  # scalar variable with =
${browser}    chrome        # scalar variable without =
${multiline}        line 1  #this is a muliline Variables
...                 line 2
...                 line 3
##### list variables #####
@{NAMES}        omar       yasmine
@{NAMES2}       @{NAMES}    med

##### disctionary variables #####
&{USER 1}       name=omar    address=sialaom0209         phone=22222222
&{USER 2}       name=yasmine    address=yas1502         phone=23232323

*** Test Cases ***
Login to saucedemo.com with different usernames and passwords
    [Template]  Connect to saucedemo.com and close browser
    standard_user  secret_sauce

*** Keywords ***
Connect to saucedemo.com and close browser
    [Arguments]  ${username}  ${password}
    Open Browser  ${url}  ${browser}
    Title Should Be    Swag Labs
    Input Text  user-name  ${username}  # Entrez le nom d'utilisateur
    Input Text  password  ${password}  # Entrez le mot de passe
    Click Element  css=#login-button
    Wait Until Element Is Visible  css=#header_container > div.header_secondary_container > span  timeout=10s
    Sleep  10s  # Attendre 5 secondes
    Close Browser