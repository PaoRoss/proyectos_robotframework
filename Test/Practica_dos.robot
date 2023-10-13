*** Settings ***
Documentation       Practica Dos
Library             SeleniumLibrary
Resource            ../Data/General_data.robot
Resource            ../Data/Locators.robot
Resource            ../Keyword_repository/General_keywords.robot


*** Test Cases ***
Practica uno
    [Documentation]    Utilizando las variables en un test
    [Tags]    test_dos
    Open site    ${url}    ${navegador}
    Wait Until Element Is Visible    //*[@class="body-height"]

    Input Text    ${L_USERNAME_ID}    ${userName}
    Input Text    ${L_USEREMAIL_ID}    ${userEmail}
    Input Text    ${L_CURRENTADDRESS_ID}    ${currentAddress}
    Input Text    ${L_PERMANENTADDRESS_ID}    ${permanentAddress}

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Button    //button[@id="submit"]

    Close Window
