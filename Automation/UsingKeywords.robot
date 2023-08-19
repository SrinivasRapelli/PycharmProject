*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Url}      https://demowebshop.tricentis.com/
${Browser}      chrome

*** Test Cases ***
Login
    [Documentation]  Login to demo web shop
    [tags]      Regression
    navigates to site url
    click on Login Link
    enter email and password
    click on login button
    getTheMsg
    close browser
*** Keywords ***
navigates to site url
    Open Browser    ${Url}      ${Browser}
    Maximize browser window
    sleep   2
click on Login Link
    click link     class=ico-login
    sleep   1
enter email and password
    input text      id=Email    srinivasrapelli888@gmail.com
    input text      id=Password         123456
    sleep   1
click on login button
#    click button        class=button-1 login-button
     press keys      xpath=//input[@class='button-1 login-button']     ENTER
    sleep   2
getTheMsg
    ${msg}     Get Text    xpath://*[@class='topic-html-content-header']
    sleep   1
    Log to console      ${msg}
    sleep   4
