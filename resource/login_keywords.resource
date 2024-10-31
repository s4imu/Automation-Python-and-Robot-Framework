*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Acess Login Page
    [Arguments]    ${URL}
    Go To   ${URL}   
    Wait Until Element Is Visible    css=[data-test*='login-container'] 

Sign in
    [Arguments]    ${USERNAME}    ${PASSWORD} 
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=login-button

Validate Error Message
    [Arguments]    ${MESSAGE}
    Wait Until Element Contains    css=[data-test*='error']   ${MESSAGE} 