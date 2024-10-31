*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/login_keywords.resource
Resource    ../resource/inventory_keywords.resource
Variables    ../fixtures/variables.py
Suite Setup    Open Browser    browser=${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    chrome


*** Test Cases ***
TC01-Successful Login
    Acess Login Page   ${URL} 
    Sign in    ${LOGIN_DATA["username"]}    ${LOGIN_DATA["password"]}
    Check Inventory Page

TC02-Unsuccssful Login - Wrong Credentials
    Acess Login Page   ${URL} 
    Sign in    ${LOGIN_DATA["username"]}    ${LOGIN_DATA["wrongPassword"]}
    Validate Error Message    ${LOGIN_DATA["wrongCredentialsErrorMessage"]}

TC03-Unsuccssful Login - No Credentials
    Acess Login Page   ${URL} 
    Click Button    id=${SELECTORS_LIST["loginButton"]}
    Validate Error Message    ${LOGIN_DATA["missingCredentialsErrorMessage"]}