*** Settings ***
Documentation       Demo de los Select
Library             SeleniumLibrary

*** Variables ***
${url}=    https://magento.softwaretestingboard.com/men/tops-men/hoodies-and-sweatshirts-men.html
${navegador}=    gc


*** Test Cases ***
Demo uno
    [Documentation]    Demo Selectores
    [Tags]    test_uno
    Open Browser    ${url}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    Hoodies & Sweatshirts - Tops - Men

    Set Selenium Speed    .5
    
    #label
    Select From List By Label    sorter    Product Name 
  
    #value
    Select From List By Value    sorter    price

    #index
    Select From List By Index    sorter    0

