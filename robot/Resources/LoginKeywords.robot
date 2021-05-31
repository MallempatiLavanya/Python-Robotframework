*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
Open my browser
    [Arguments]    ${url}   ${browser}
    open browser   ${url}   ${browser}
    maximize browser window
Close my browser
    close all browsers

Enter username
    [Arguments]    ${username}
    input text    ${loginUserName}  ${username}

Enter password
    [Arguments]    ${password}
    input text    ${loginPassword}  ${password}

Click signin
    click button    ${SIGNINBUTTON}

Verify successful login
    title should be    Login: Mercury Tours
