*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handle Alerts
    [Tags]    Sanity
    open browser    http://testautomationpractice.blogspot.com/    chrome
    click element    xpath://*[@id="HTML9"]/div[1]/button
    #handle alert    accept
    #handle alert    dismiss
    #handle alert    leave
    #alert should be present    Press a button!
    alert should not be present    Press a button!