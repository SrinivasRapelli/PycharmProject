*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${url1}     https://demowebshop.tricentis.com/
${browser1}      chrome

${url2}     https://demoqa.com/
${browser2}     edge
*** Test Cases ***
Test1
    ${PageTitle}  Launching browser    ${url1}      ${browser1}
    Log to console  ${PageTitle}
    Log     ${PageTitle}
Test2
    ${PageTitle2}   Launching browser   ${url2}     ${browser2}
    Log to console  ${PageTitle2}
    Log     ${PageTitle2}
*** Keywords ***
Launching browser
    [Arguments]     ${WebUrl}   ${WebBrowser}
    open browser    ${WebUrl}   ${WebBrowser}
    maximize browser window
    ${titleOfThePage}   get title
    [Return]    ${titleOfThePage}
    Sleep   2