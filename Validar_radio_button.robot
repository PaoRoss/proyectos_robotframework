*** Settings ***
Documentation       Demo de los Radio Buttons
Library             SeleniumLibrary

*** Variables ***
${url}=    https://testingqarvn.com.es/radio-buttons/
${navegador}=    gc
${t}=    5


*** Test Cases ***
Demo uno
    [Documentation]    Demo Radio Button
    [Tags]    test_uno
    Open Browser    ${url}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    Radio Buttons | TestingQaRvn
    Sleep    ${t}

    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    ${t}

    # Select Radio Button    field_44[]    CypressIO
    # Sleep    ${t}
    # Select Radio Button    field_44[]    WebdriverIO
    # Sleep    ${t}

    Click Element    xpath=//label[contains(.,'CypressIO')]
    Sleep    ${t}

    Click Element    xpath=//label[contains(.,'WebdriverIO')]
    Sleep    ${t}

    Click Element    xpath=//label[contains(.,'Selenium')]
    Sleep    ${t}

