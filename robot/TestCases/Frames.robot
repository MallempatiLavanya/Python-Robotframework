*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Frames Testing
    [Tags]    Sanity
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    select frame    packageListFrame
    click link    org.openqa.selenium
    unselect frame
    select frame    classFrame
    click link    org.openqa.selenium
    unselect frame
