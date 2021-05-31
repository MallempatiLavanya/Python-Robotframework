*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tabbed windows
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click button    click
    switch window    SeleniumHQ Browser Automation    #id/name of new window
    click element    xpath:/html/body/div[4]/div[1]/div[2]/a/div/span
    close all browsers
