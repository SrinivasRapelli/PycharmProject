*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***
#ScrolldownToPerticularPixal  #1500
#    open browser    https://www.flipkart.com/     chrome
#    maximize browser window
#    sleep   4
#    execute javascript  window.scrollTo(0,1500)
#    sleep   4

#ScrollDownToPerticularElement
#    open browser    https://www.amazon.in/     chrome
#    maximize browser window
#    sleep   4
#    #click element       xpath://*[@classs='_2KpZ6l _2doB4z']
#    scroll element into view    xpath:(//*[@class='product-image'])[100]
#    sleep   4
#    #click element       xpath:(//*[@class='product-image'])[100]
#    sleep   4
#    capture element screenshot      xpath:(//*[@class='product-image'])[100]        img.jpg
#    close browser


ScrollDownToTheEndOfThePage
    open browser    https://www.amazon.in/     chrome
    maximize browser window
    sleep   4
    execute javascript      window.scrollTo(0,document.body.scrollHeight)
    Sleep   4
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
    Sleep   5
*** Keywords ***
