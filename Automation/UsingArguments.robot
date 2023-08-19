*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url1}     https://demowebshop.tricentis.com/
${browser1}      chrome

${url2}     https://demoqa.com/
${browser2}     edge
*** Test Cases ***
Practice
    launching browser       ${url1}      ${browser1}
    close browser
    launching browser       ${url2}      ${browser2}
    close browser


*** Keywords ***
Launching browser
    [Arguments]     ${WebUrl}   ${WebBrowser}
    open browser    ${WebUrl}   ${WebBrowser}
    maximize browser window

    Sleep   2