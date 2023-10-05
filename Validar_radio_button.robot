*** Settings ***
Documentation       Demo Radio Buttons
Library             SeleniumLibrary

*** Variables ***
${url}=    https://demoqa.com/radio-button
${navegador}=    gc
${t}=    3


*** Test Cases ***
Demo uno
    [Documentation]    Demo Radio Button
    [Tags]    test_uno
    Open Browser    ${url}    ${navegador}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    DEMOQA
    Sleep    ${t}

    Click Element    xpath=//label[@for='yesRadio']
    Sleep    ${t}

    Wait Until Element Is Visible    xpath=//span[text()= "Yes"]

    Click Element    xpath=//label[@for='impressiveRadio']
    Sleep    ${t}

    Wait Until Element Is Visible    xpath=//span[text()= "Impressive"]

    Page Should Contain Element    xpath=//label[contains(@class, "disabled")]
    Sleep    ${t}


# Demo dos
#     [Documentation]    Demo Radio Button
#     [Tags]    test_uno
#     Open Browser    ${url}    ${navegador}    options=add_experimental_option("detach", True)
#     Maximize Browser Window
#     Title Should Be    Radio Buttons | TestingQaRvn
#     Sleep    ${t}

#     Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
#     Sleep    ${t}

#     # Select Radio Button    field_44[]    CypressIO
#     # Sleep    ${t}
#     # Select Radio Button    field_44[]    WebdriverIO
#     # Sleep    ${t}

#     Click Element    xpath=//label[contains(.,'CypressIO')]
#     Sleep    ${t}

#     Click Element    xpath=//label[contains(.,'WebdriverIO')]
#     Sleep    ${t}

#     Click Element    xpath=//label[contains(.,'Selenium')]
#     Sleep    ${t}

