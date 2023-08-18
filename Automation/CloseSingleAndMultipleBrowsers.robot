*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
#CloseBrowser
#    close current browser

CloseAllBrowsers
    close multiple browsers


*** Keywords ***
close current browser
    open browser    https://www.google.co.in/   chrome
    maximize browser window
    sleep   3
    open browser    https://www.flipkart.com/   chrome
    Maximize browser window
    sleep   3
    close browser

close multiple browsers
    open browser    https://www.google.co.in/   chrome
    maximize browser window
    sleep   3
    open browser    https://www.flipkart.com/   chrome
    Maximize browser window
    sleep   3
    close all browsers