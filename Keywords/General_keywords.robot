*** Settings ***
Library    SeleniumLibrary
Resource    ../Data/General_data.robot

*** Keywords ***
Open Site
    [Arguments]    ${URL}    ${NAV}
    Open Browser    ${URL}    ${NAV}
    Maximize Browser Window

Click Element*
    [Arguments]    ${LOCATOR}    ${MSG_IF_FAILS}
    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${LOCATOR}    ${SMALL_TIMEOUT}
    IF    ${status}==${True}
        Click Element    ${LOCATOR}
    ELSE
        Capture Page Screenshot    ${MSG_IF_FAILS} ${LOCATOR}.png
        Log    ${MSG_IF_FAILS}
        Fail    ${MSG_IF_FAILS}
        #Close Browser
    END

Input text*
    [Arguments]    ${LOCATOR}
    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${LOCATOR}    ${SMALL_TIMEOUT}
    