*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${Browser}      Edge
*** Test Cases ***
#TimeTest1   #using sleep    3
#    ByUsingSleep

#TimeTest2   #using Set Selenium Speed   2
#    ByUsingSetSeleniumSpeed

#WaitUntil
#    ByUaingWaitUntil

ImplicitWait
    UsingImplicitWait
*** Keywords ***
ByUsingSleep
    Open Browser    ${Url}      ${Browser}
    maximize browser window
    sleep   3
    Input Text      firstname       Srinivas
    Input Text      lastname        Rapelli
    sleep   3
    Select Radio Button     sex     Male
    sleep   3
    Select Radio Button     exp     2
    sleep   3
    click element      xpath:(//*[@name='profession'])[2]
    sleep   3
    click element       xpath:(//*[@name='tool'])[3]
    sleep   3
    Select from List by label       continents      Europe
    sleep   3
    Select from List by Index   selenium_commands       4
    sleep   3
    Click button        submit
    sleep   3
    Handle alert        accept
    close browser

ByUsingSetSeleniumSpeed
#    using get selenium speed to check the speed
    ${speed}    get selenium speed
    log to console  ${speed}
    Open Browser    ${Url}      ${Browser}
    maximize browser window
    Set Selenium Speed  2

    Input Text      firstname       Srinivas
    Input Text      lastname        Rapelli
    Select Radio Button     sex     Male
    Select Radio Button     exp     2
    click element      xpath:(//*[@name='profession'])[2]
    click element       xpath:(//*[@name='tool'])[3]
    Select from List by label       continents      Europe
    Select from List by Index   selenium_commands       4
    Click button        submit
    Handle alert        accept
    close browser

    ${speed}    get selenium speed
    log to console  ${speed}

ByUaingWaitUntil
    open browser    ${Url}  ${Browser}
    maximize browser window
    set selenium timeout    10seconds
    wait until page contains    Selenium - Automation Practice Form
     Input Text      firstname       Srinivas
    Input Text      lastname        Rapelli
    Select Radio Button     sex     Male
    Select Radio Button     exp     2
    sleep   3

UsingImplicitWait
    open browser    ${Url}  ${Browser}
    maximize browser window
    ${Wait}     get selenium implicit wait
    Log to console      ${Wait}

    set selenium Implicit wait   10seconds

    ${Wait}     get selenium implicit wait
    Log to console      ${Wait}

    Input Text      firstname1       Srinivas
    Input Text      lastname        Rapelli
    Select Radio Button     sex     Male
    Select Radio Button     exp     2
    sleep   3