*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/login_keywords.resource
Resource    ../resource/inventory_keywords.resource
Variables    ../fixtures/variables.py
Suite Setup    Open Browser    browser=chrome
Suite Teardown    Close Browser

*** Variables ***



*** Test Cases ***
TC01-Successful Login
    Acess Login Page   ${URL_DATA["baseUrl"]} 
    Sign in    ${LOGIN_DATA["username"]}    ${LOGIN_DATA["password"]}
    Check Inventory Page

TC02-Unsuccssful Login - Wrong Credentials
    Acess Login Page   ${URL_DATA["baseUrl"]} 
    Sign in    ${LOGIN_DATA["username"]}    ${LOGIN_DATA["wrongPassword"]}
    Validate Error Message    ${LOGIN_DATA["wrongCredentialsErrorMessage"]}

TC03-Unsuccssful Login - No Credentials
    Acess Login Page   ${URL_DATA["baseUrl"]} 
    Click Button    id=${SELECTORS_LIST["loginButton"]}
    Validate Error Message    ${LOGIN_DATA["missingCredentialsErrorMessage"]}