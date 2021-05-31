*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Table validation
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${row}=     get element count    xpath://table[@name='BookTable']//tr
    ${col}=     get element count    xpath://table[@name='BookTable']//th
    log to console    ${row}
    log to console    ${col}
    ${value}=   get text   xpath://table[@name='BookTable']//tr[2]//td[1]
    log to console    ${value}
    table column should contain    xpath://table[@name='BookTable']    2    Author
    table row should contain    xpath://table[@name='BookTable']    4    Learn JS
    table cell should contain    xpath://table[@name='BookTable']   5   2    Mukesh
    table header should contain    xpath://table[@name='BookTable']     BookName