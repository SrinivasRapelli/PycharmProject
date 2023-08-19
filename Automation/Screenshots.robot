*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
TakeScreenshot
    open browser    https://demoqa.com/     edge
    maximize browser window
    capture element screenshot      class=banner-image      d:/image.png
    capture page screenshot         d:/screenshot.png
    sleep   3
    close browser

*** Keywords ***
