*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser1
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}    ${appbrowser}
    maximize browser window

launchBrowser2
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}    ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}