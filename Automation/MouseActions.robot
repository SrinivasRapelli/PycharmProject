*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***
#RightClick
#    open browser    https://testautomationpractice.blogspot.com/    chrome
#    maximize browser window
#    open context menu   xpath:(//*[contains(text(),'Alert')])[2]
#    sleep   10
#    close browser

#DoubleClick
#    open browser    https://testautomationpractice.blogspot.com/    chrome
#    maximize browser window
#    double click element   xpath://*[contains(text(),'Copy Text')]
#    sleep   10
#    close browser

DragAndDrop
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    sleep   2
    scroll element into view    id:draggable
    sleep   4
    drag and drop       id:draggable        id:droppable
    sleep   5
    close browser

*** Keywords ***
