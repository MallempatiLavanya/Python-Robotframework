*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${url}  http://demo.guru99.com/test/newtours/index.php
${browser}  chrome
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
Login Test
    [Tags]    Sanity
    Open my browser     ${url}  ${browser}
    Enter username    ${user}
    Enter password    ${pwd}
    Click signin
    sleep    3
    Verify successful login
    Close my browser