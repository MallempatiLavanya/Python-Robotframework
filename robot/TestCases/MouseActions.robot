*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse actions
    #right click
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']

    #double click
    go to    http://testautomationpractice.blogspot.com/
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    drag and drop    draggable  droppable

