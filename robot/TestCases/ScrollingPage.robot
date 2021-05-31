*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scrolling tests
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    #execute javascript    window.scrollTo(0,1500)
    #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[10]/td[2]
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    4
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
