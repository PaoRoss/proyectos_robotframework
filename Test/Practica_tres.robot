*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource            ../Data/General_data.robot

*** Test Cases ***
Demo uno
    [Documentation]    Prueba de nuestras primeras variables
    # [Tags]    test_uno
    Open Browser    ${url5}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    ${title}
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s

    Input Text    //input[@id="input-firstname"]   ${nombre}
    Input Text    //input[@id="input-lastname"]    ${apellidoMaterno}
    Input Text    //input[@id="input-email"]    ${email}
    Input Text    //input[@id="input-telephone"]    ${phoneNumber}

    Input Password    //input[@id="input-password"]    ${password}
    Input Password    //input[@id="input-confirm"]    ${passwordConfirmation}

    Click Element    //input[@name="newsletter"]
    Click Element    //input[@name="agree"]

    Click Element   //input[@value="Continue"]

    Wait Until Element Is Visible    //h1[contains(text(), "Account")]

    Click Link    //a[text()="Continue"]

    Wait Until Element Is Visible    //h2[text()="My Account"]



    Sleep    2


*** Keywords ***
