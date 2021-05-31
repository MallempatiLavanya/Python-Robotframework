*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Get Links
    open browser    http://demo.guru99.com/test/newtours/index.php  chrome
    maximize browser window
    ${link_count}=    get element count    xpath://a
    log to console    ${link_count}
    FOR    ${i}     IN RANGE    1   ${link_count}
        ${link}=    get text    xpath:(//a)[${i}]
        log to console    ${link}
    END
