*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Testdata.robot
#Library     DataDriver    ../TestData/Excel.xlsx
Library     DataDriver    ../TestData/Execldata.csv
Suite Setup    Open my browser
Suite Teardown    Close my browser
Test Template    Invalid login

*** Test Cases ***
Logintestwithexcel using ${username} and ${password}




*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input username   ${username}
    Input password    ${password}
    Click login button
    Error message should be visible