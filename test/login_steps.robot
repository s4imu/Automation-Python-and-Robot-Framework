*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/login_keywords.resource
Resource    ../resource/inventory_keywords.resource
Test Setup    Open Browser    ${URL}   ${BROWSER}
Test Teardown    Close Browser

*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    chrome
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${WRONG_PASSWORD}    secret

*** Test Cases ***
TC01-Successful Login
    Acess Login Page   ${URL} 
    Sign in    ${USERNAME}    ${PASSWORD}
    Check Inventory Page

TC02-Unsuccssful Login - Wrong Credentials
    Acess Login Page   ${URL} 
    Sign in    ${USERNAME}    ${WRONG_PASSWORD}
    Validate Error Message    do not match

TC03-Unsuccssful Login - No Credentials
    Acess Login Page   ${URL} 
    Click Button    id=login-button
    Validate Error Message    is required