*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/index.php
${browser}  chrome

*** Test Cases ***
TC1
    launchBrowser1   ${url}  ${browser}
    input text    name:userName    mercury
    input text    name:password    mercury

TC2
    ${app_title}=    launchBrowser2   ${url}  ${browser}
    log to console    ${app_title}
    input text    name:userName    mercury
    input text    name:password    mercury

