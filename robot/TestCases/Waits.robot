*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testcases related to waits
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    #${speed}=   get selenium speed
    #log to console    ${speed}
    set selenium implicit wait    2 seconds
    set selenium speed    2seconds
    select radio button    Gender   F
    input text    id:FirstName  lavanya
    input text    id:LastName   lavi
    input text    id:Email  lavanay@abc.com
    input text    id:Password   lavanya
    input text    id:ConfirmPassword    lavanya
    close browser

