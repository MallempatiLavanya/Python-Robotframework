*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC!
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123
    capture element screenshot    xpath://*[@id="divLogo"]/img    C:/Users/40006197/PycharmProjects/robot/TestCases/logo.png
    capture page screenshot    C:/Users/40006197/PycharmProjects/robot/TestCases/fullpage.png

