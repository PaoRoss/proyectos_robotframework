*** Settings ***
Library    SeleniumLibrary
Resource    ../Data/General_data.robot

*** Keywords ***
Wait for element and click it*
    [Arguments]    ${LOCATOR}    ${MSG_IF_ERROR}
    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${LOCATOR}    ${TIMEOUT}
    Run Keyword If    ${status}==${True}    Click Element    ${LOCATOR}
    Run Keyword If    ${status}==${False}    Report error*    ${MSG_IF_ERROR}

Report error*
    [Arguments]    ${ERROR_MSG}
    Log    ${ERROR_MSG}
    Capture Page Screenshot    ${ERROR_MSG}.png
    Fail    ${ERROR_MSG}
    #Close Browser