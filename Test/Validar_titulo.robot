*** Settings ***
Documentation       Practica Dos
Library             SeleniumLibrary
Resource            ../Data/General_data.robot
Resource            ../Keyword_repository/General_keywords.robot

*** Test Cases ***
Practica Validando Titulo
    [Documentation]    Validando el título de la página
    [Tags]    test_uno
    Open site    ${url}    ${navegador}
    #Validando el título
    Title Should Be    DEMOQA
    Wait Until Element Is Visible    //*[@class="body-height"]
    ${name}=    set variable    id=userName
    ${email}=    set variable    id=userEmail

    Element Should Be Visible    ${name}
    Element Should Be Visible    ${name}
    Input Text    id=userName    Rodrigo

    Element Should Be Visible    ${email}
    Element Should Be Visible    ${email}
    Input Text    id=userEmail    rodrigo@gmail.com

    
    Input Text    id=currentAddress    dirección uno
    Input Text    id=permanentAddress    dirección dos

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Button    //button[@id="submit"]

    Close Window