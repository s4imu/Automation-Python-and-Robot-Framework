*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Successful_Login
    Open Browser    url=https://www.saucedemo.com/    browser=chrome
    Wait Until Element Is Visible    css=[data-test*='login-container']
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Wait Until Element Is Visible   id=inventory_container

Validate_Unsuccssful_Login_Error_Message
    Open Browser    url=https://www.saucedemo.com/    browser=chrome
    Wait Until Element Is Visible    css=[data-test*='login-container']
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret
    Click Button    id=login-button
    Wait Until Element Is Visible    css=[data-test*='error']
    Element Should Contain    css=[data-test*='error']    do not match