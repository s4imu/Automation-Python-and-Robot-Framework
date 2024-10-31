*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC01-Successful Login
    Open Browser    url=https://www.saucedemo.com/    browser=chrome
    Wait Until Element Is Visible    css=[data-test*='login-container']
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Wait Until Element Is Visible   id=inventory_container

TC02-Unsuccssful Login - Wrong Credentials
    Open Browser    url=https://www.saucedemo.com/    browser=chrome
    Wait Until Element Is Visible    css=[data-test*='login-container']
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret
    Click Button    id=login-button
    Wait Until Element Contains    css=[data-test*='error']    do not match

TC03-Unsuccssful Login - No Credentials
    Open Browser    url=https://www.saucedemo.com/    browser=chrome
    Wait Until Element Is Visible    css=[data-test*='login-container']
    Click Button    id=login-button
    Wait Until Element Contains    css=[data-test*='error']    is required