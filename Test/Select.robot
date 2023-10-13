*** Settings ***
Documentation       Demo de los Select
Library             SeleniumLibrary
Resource            ../Data/General_data.robot
Resource            ../Keyword_repository/General_keywords.robot

*** Test Cases ***
Demo uno
    [Documentation]    Demo Selectores
    [Tags]    test_uno
    Open site    ${url_ecommerce}    ${navegador}
    
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
