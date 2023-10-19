*** Settings ***
Documentation       Demo de los Select
Library             SeleniumLibrary
Resource            ../Data/General_data.robot

*** Test Cases ***
Demo uno
    [Documentation]    Demo Selectores
    [Tags]    test_uno
    Open Browser    ${url3}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    Hoodies & Sweatshirts - Tops - Men

    #Función para la espera de los elementos
    # 
    # Log To Console    ${tiempo}  
    # Set Selenium Timeout    10

    ${tiempo}=    Get Selenium Implicit Wait
    Log To Console    ${tiempo}
    Set Selenium Implicit Wait    10s

#tiempo para todas nuestras funciones
    #Set Selenium Speed    .5

    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Set Selenium Speed    .5
    
    Select From List By Label    sorter    Product Name 
    Select From List By Value    sorter    price
    Select From List By Index    sorter    0


    ${tiempo}=    Get Selenium Implicit Wait
    Log To Console    ${tiempo}

    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}