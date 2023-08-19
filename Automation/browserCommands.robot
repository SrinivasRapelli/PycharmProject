*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***
NavigatesBetweenLinks
    open browser    https://www.google.com/   chrome
    maximize browser window
    sleep   3
    go to   http://www.flipkart.com
    sleep   3
    go back
    sleep   3
    close browser
*** Keywords ***
