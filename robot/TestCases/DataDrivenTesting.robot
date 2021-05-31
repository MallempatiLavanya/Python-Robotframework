*** Settings ***
Library    Selenium Library
Resource    ../Resources/Testdata.robot
Suite Setup   Open my browser
Suite Teardown   Close my browser
Test Template    Invalid login

*** Test Cases ***       username               password
Right user empty pwd    admin@yourstore.com     ${EMPTY}
Right user wrong pwd    admin@yourstore.com     xyz
Wrong user right pwd    adm@yourstore.com       admin
Wrong user empty pwd    adm@yourstore.com       ${EMPTY}
Wrong user wrong pwd    adm@yourstore.com       xyz





*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input username    ${username}
    Input password    ${password}
    Click login button
    Error message should be visible



