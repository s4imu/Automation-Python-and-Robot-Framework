*** Settings ***
Library    SeleniumLibrary
Variables    ../fixtures/selectors.py

*** Keywords ***

Check Inventory Page
    ${location}    Get Location   
    Should Contain    ${location}    /inventory
    Wait Until Element Is Visible   id=${SELECTORS_LIST["inventoryContainer"]}
