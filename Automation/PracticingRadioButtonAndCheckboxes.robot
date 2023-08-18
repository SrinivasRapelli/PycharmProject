*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}     chrome

*** Test Cases ***
clicking the radio button
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1

    #Click Element     xpath:(//*[@name='sex'])[1]
    Select Radio Button     sex     Male
    Select Radio Button     exp     2
    Select Checkbox         profession
    click element       xpath:(//*[@name="profession"])[2]
#    Handling dropDowns
    Select from List by Label       name=continents     Africa
#    Handling List Boxes
    Select from List by Index       name=selenium_commands      4
    click element       name=submit
#    Handling Alerts
    Handle alert        dismiss

    click element       name=submit

    Handle alert        accept
    sleep   5
    close browser
*** Keywords ***

