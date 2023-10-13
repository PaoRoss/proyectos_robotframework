Documentación    Proyecto de pruebas 2023


*** Settings ***
Library     SeleniumLibrary
Resource    ../Data/General_data.robot
Resource    ../Keyword_repository/General_keywords.robot



*** Test Cases ***
 Mi primer Test
     [Documentation]    Primer prueba del sistema
     [Tags]    Test_uno
     Open site    ${url}    ${navegador}
     
     Wait Until Element Is Visible    //*[@class="body-height"]

     Input Text    id=userName    Rodrigo
     Input Text    id=userEmail    rodrigo@gmail.com
     Input Text    id=currentAddress    dirección uno
     Input Text    id=permanentAddress   dirección dos

     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)    
     Click Button  //button[@id="submit"]

     Close Window


*** Keywords ***