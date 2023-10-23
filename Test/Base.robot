*** Settings ***
Library    SeleniumLibrary
Resource            ../Data/General_data.robot

*** Test Cases ***
Demo uno
    [Documentation]    Prueba de nuestras primeras variables
    [Tags]    test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Title Should Be    ${title}
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s

    



*** Keywords ***
