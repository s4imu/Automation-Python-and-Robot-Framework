*** Settings ***
Library    SeleniumLibrary
Variables    ../fixtures/selectors.py
Variables    ../fixtures/variables.py

*** Keywords ***

Check Inventory Page
    ${location}    Get Location   
    Should Contain    ${location}    ${URL_DATA["inventoryUrl"]} 
    Wait Until Element Is Visible   id=${SELECTORS_LIST["inventoryContainer"]}
