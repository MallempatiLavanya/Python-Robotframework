*** Settings ***


*** Test Cases ***
TC1 User registration test
    [Tags]    sanity
    log to console    This is user re test
    log to console    reg test is over

TC2
    [Tags]    Regression
    log to console    this is login test
    log to console    login test is over

TC3
    [Tags]  sanity
    log to console    This is changing user settings test
    log to console    Chaning user settings test is over

TC4
    [Tags]    Regression    sanity
    log to console    This is logout test
    log to console    Logout test is over
