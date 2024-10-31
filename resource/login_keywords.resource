*** Settings ***
Library    SeleniumLibrary
Variables    ../fixtures/selectors.py


*** Keywords ***

Acess Login Page
    [Arguments]    ${URL}
    Go To   ${URL}   
    Wait Until Element Is Visible    css=${SELECTORS_LIST["loginForm"]} 

Sign in
    [Arguments]    ${USERNAME}    ${PASSWORD} 
    Input Text    id=${SELECTORS_LIST["usernameInputField"]}    ${USERNAME}
    Input Text    id=${SELECTORS_LIST["passwordInputField"]}    ${PASSWORD}
    Click Button    id=${SELECTORS_LIST["loginButton"]}

Validate Error Message
    [Arguments]    ${MESSAGE}
    Wait Until Element Contains    css=${SELECTORS_LIST["errorMessageDiv"]}  ${MESSAGE} 