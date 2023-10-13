*** Settings ***
Documentation       Practica Dos
Library             SeleniumLibrary
Resource            ../Data/General_data.robot

*** Test Cases ***
Practica Validando Titulo
    [Documentation]    Validando el título de la página
    [Tags]    test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    #Validando el título
    Title Should Be    DEMOQA
    Wait Until Element Is Visible    //*[@class="body-height"]
    ${name}=    set variable    id=userName
    ${email}=    set variable    id=userEmail

    Element Should Be Visible    ${name}
    Element Should Be Enabled     ${name}
    Input Text    id=userName    Rodrigo

    Element Should Be Visible    ${email}
    Element Should Be Enabled     ${email}
    Input Text    id=userEmail    rodrigo@gmail.com

    
    Input Text    id=currentAddress    dirección uno
    Input Text    id=permanentAddress    dirección dos

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Button    //button[@id="submit"]

    Close Window

Practica dos Validando por Atributo

    [Documentation]    Validando Atributo
    [Tags]    test_dos
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    
    #Validando el título
    Title Should Be    DEMOQA
    Wait Until Element Is Visible    //*[@class="body-height"]
    ${name}=    set variable    id=userName
    ${email}=    set variable    id=userEmail
    ${dir1}=    set variable    id=currentAddress

    Element Should Be Visible    ${name}
    Element Should Be Enabled     ${name}
    Input Text    id=userName    Rodrigo

    Element Should Be Visible    ${email}
    Element Should Be Enabled     ${email}
    Input Text    id=userEmail    rodrigo@gmail.com

    #Valdando por el Atributo
    Element Attribute Value Should Be    ${dir1}    placeholder    Current Address
    Input Text    id=currentAddress    dirección uno
    Input Text    id=permanentAddress    dirección dos

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Button    //button[@id="submit"]

    Close Window

Practica tres Validando por Negación

    [Documentation]    Validando por Negación
    [Tags]    test_tres
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    
    #Validando el título
    Title Should Be    DEMOQA
    Wait Until Element Is Visible    //*[@class="body-height"]
    ${name}=    set variable    id=userNameee
    ${email}=    set variable    id=userEmail
    ${dir1}=    set variable    id=currentAddress

    Element Should Not Be Visible    ${name}
    Input Text    id=userName    Rodrigo

    Element Should Be Visible    ${email}
    Element Should Be Enabled     ${email}
    Input Text    id=userEmail    rodrigo@gmail.com

    #Valdando por el Atributo
    Element Attribute Value Should Be    ${dir1}    placeholder    Current Address
    Input Text    id=currentAddress    dirección uno
    Input Text    id=permanentAddress    dirección dos

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Button    //button[@id="submit"]

    Close Window