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
    Select from List by Index       name=continents     3
    Select from List by Index       name=selenium_commands      4
    click element       name=submit
    Handle alert        dismiss

    click element       name=submit
    Handle alert        accept

    close browser
*** Keywords ***

