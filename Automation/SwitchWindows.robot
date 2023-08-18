*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
#SwitchTab
#    open browser    https://demoqa.com/browser-windows  chrome
#    maximize browser window
#    sleep   3
#    click element   id:tabButton
#    sleep   3
#    switch window   DEMOQA
#    sleep   3
#    close window
#    sleep   3
#    close browser

SwitchWindow
    open browser    https://demoqa.com/browser-windows   chrome
    maximize browser window
    sleep  2
    click element   id:windowButton
    sleep   2
#    ${msg} =     Get Text    id:sampleHeading
#    Log     Element text:   ${msg}
#    sleep   3
    switch window       DEMOQA
    sleep   3
    close window
    sleep   3
    close browser
*** Keywords ***
