*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Verify dropdown

    open browser    http://www.practiceselenium.com/practice-form.html  chrome
    maximize browser window
    select from list by label    continents    USA
    select from list by index    continents    5
    select from list by label    selenium_commands    Browser Commands
    select from list by index    selenium_commands    3
