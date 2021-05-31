*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://admin-demo.nopcommerce.com
${browser}  chrome


*** Keywords ***
Open my browser
    open browser    ${url}  ${browser}
    maximize browser window

Close my browser
    close all browsers

Open login page
    go to    ${url}

Input username
    [Arguments]    ${username}
    input text    id:Email  ${username}

Input password
    [Arguments]    ${password}
    input text    id:Password   ${password}

Click login button
    click element    xpath://button[@type='submit']

Click logout
    click link    Logout

Error message should be visible
    page should contain    Login was unsuccessful

Login success message
    page should contain    Dashboard
