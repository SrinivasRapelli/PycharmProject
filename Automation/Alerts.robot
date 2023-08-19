*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
HandlingAlerts
    alertHandles

alertShouldBePresent
    alertHandles2
*** Keywords ***
alertHandles
    open browser    https://demoqa.com/alerts   chrome
    maximize browser window
    sleep   2
    click element   id=confirmButton
    sleep   2
    Handle alert    accept
    sleep   4
    ${msg}    Get Text    id=confirmResult
    sleep   3
    Log  Element Text: ${msg}
    sleep   3
    click element   id=confirmButton
    sleep   3
    Handle alert    dismiss
    sleep   3
    ${msg2}    Get Text    id=confirmResult
    Log     Element Text: ${msg2}
    sleep   3
    close browser

alertHandles2
    open browser    https://demoqa.com/alerts   chrome
    maximize browser window
    sleep   2
    click element   id=confirmButton
    sleep   2
    alert should be present     Do you confirm action?
    sleep   3
    ${msg}     Get Text    id=confirmResult
    sleep   2
    Log to console      ${msg}
    #########################################################
    sleep   3
    click element   id=confirmButton
    sleep   2
    alert should not be present   Do you confirm action?
    sleep   2
    ${msg2}        Get Text        id=confirmResult
    sleep   2
    Log to console      ${msg2}
    close browser