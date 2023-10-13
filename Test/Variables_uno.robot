*** Settings ***
Documentation    Demo de Variables
Library    SeleniumLibrary
Resource            ../Data/General_data.robot

*** Test Cases ***
Demo uno
    [Documentation]    Prueba de las primeras Variables
    [Tags]    test_uno
    Log    ${nombre} ${apellidoPaterno} ${apellidoMaterno}
    ${direccion} =  Set Variable  Nueva dirección demo
    Log To Console     ${direccion}

Demo dos
    [Documentation]    Segunda prueba
    [Tags]    test_dos
    Log    ${nombre} ${apellidoPaterno} ${apellidoMaterno}

Demo tres
    [Documentation]    Tercera prueba
    [Tags]    test_tres
    Log    ${nombre} ${apellidoPaterno} ${apellidoMaterno}
    ${a} =     set Variable    20
    ${b} =     set Variable    30
    ${c} =     Evaluate    ${a}+${b}

    Log To Console    ${a}
    Log To Console    ${b}
    Log To Console    ${c}

    
    

*** Keywords ***