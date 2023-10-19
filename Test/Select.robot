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

    #label
    Select From List By Label    sorter    Product Name 
    Sleep    ${t}

    #value
    Select From List By Value    sorter    price
    Sleep    ${t}

    #index
    Select From List By Index    sorter    0
    Sleep    ${t}
