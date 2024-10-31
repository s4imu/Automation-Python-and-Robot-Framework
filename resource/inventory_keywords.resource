*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Check Inventory Page
    ${location}    Get Location   
    Should Contain    ${location}    /inventory
    Wait Until Element Is Visible   id=inventory_container
