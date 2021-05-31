*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MultipleBrowsers Test
    open browser    https://www.google.com/    chrome
    maximize browser window
    sleep    3
    open browser    https://www.bing.com/   chrome
    maximize browser window
    switch browser    1
    ${browser1_title}=   get title
    log to console    ${browser1_title}
