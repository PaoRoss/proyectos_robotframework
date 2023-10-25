*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource            ../Data/General_data.robot

*** Test Cases ***
First demo
    [Documentation]    Validate Register Account
    [Tags]    first_test
    Open Browser    ${url5}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    ${title}
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s


    Wait Until Element Is Visible    //legend[text()="Your Personal Details"]
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

    Click Element    //a[text()="Continue"]

    Wait Until Element Is Visible    //h2[text()="My Account"]

    Sleep    2
    Close Browser

Second demo
    [Documentation]    Invalid Register Account
    [Tags]    second_test
    Open Browser    ${url5}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    ${title}
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s


    Wait Until Element Is Visible    //legend[text()="Your Personal Details"]
    Input Text    //input[@id="input-firstname"]   ${nombre}
    Input Text    //input[@id="input-lastname"]    ${apellidoMaterno}
    Input Text    //input[@id="input-email"]       ${emailEmty} 
    Input Text    //input[@id="input-telephone"]    ${phoneEmpty}  

    Input Password    //input[@id="input-password"]    ${password}
    Input Password    //input[@id="input-confirm"]    ${passwordConfirmation}

    Click Element    //input[@name="newsletter"]
    Click Element    //input[@name="agree"]

    Click Element   //input[@value="Continue"]

    Wait Until Element Is Visible    //div[contains(text(), "E-Mail Address does")]
    Wait Until Element Is Visible    //div[contains(text(),'Telephone must be')]

    Wait Until Element Is Visible    //h1[contains(text(), "Account")]

    Sleep    2
    Close Browser

Third demo
    [Documentation]    Validate Message for E-mail already registered
    [Tags]    third_test
    Open Browser    ${url5}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    ${title}
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s


    Wait Until Element Is Visible    //legend[text()="Your Personal Details"]
    Input Text    //input[@id="input-firstname"]   ${nombre}
    Input Text    //input[@id="input-lastname"]    ${apellidoMaterno}
    Input Text    //input[@id="input-email"]    ${email}
    Input Text    //input[@id="input-telephone"]    ${phoneNumber}

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    Input Password    //input[@id="input-password"]    ${password}
    Input Password    //input[@id="input-confirm"]    ${passwordConfirmation}

    Click Element    //input[@name="newsletter"]
    Click Element    //input[@name="agree"]

    Click Element   //input[@value="Continue"]

    Execute JavaScript    window.scrollTo(document.body.scrollHeight, 0)

    Wait Until Element Is Visible    //div[contains(text(), " Warning: E-Mail Address is already registered!")]

    Sleep    2
    Close Browser


*** Keywords ***
