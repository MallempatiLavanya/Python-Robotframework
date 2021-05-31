*** Settings ***
Suite Setup    log to console   Opening browser
Suite Teardown    log to console   Closing browser
Test Setup    log to console    Login to application
Test Teardown    log to console    Logout to application

*** Test Cases ***
TC1
    log to console    This is TC1
TC2
    log to console    This is TC2