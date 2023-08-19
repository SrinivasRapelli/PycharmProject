*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
#Print the Number of rows and colomns
#    open browser    https://www.w3schools.com/html/html_tables.asp  chrome
#    maximize browser window
#    ${rows}     get element count    xpath://*[@id="customers"]/tbody/tr/td[1]
#    ${colomns}  get element count    xpath://*[@id="customers"]/tbody/tr[2]/td
#    sleep   2
#    Log to console      ${rows}
#    Log to console      ${colomns}

#Print the data in the cells
#    open browser    https://www.w3schools.com/html/html_tables.asp  chrome
#    maximize browser window
#    ${cell1}     get text     xpath://*[@id="customers"]/tbody/tr[4]/td[1]
#    ${cell2}     get text     xpath://*[@id="customers"]/tbody/tr[7]/td[3]
#    sleep   2
#    Log to console      ${cell1}
#    Log to console      ${cell2}

Validation actions on html table
    open browser    https://www.w3schools.com/html/html_tables.asp    chrome
    maximize browser window
    table column should contain     xpath://*[@id="customers"]/tbody/tr/td[1]      1     Alfreds Futterkiste
    sleep   2
    table row should contain       xpath://*[@id="customers"]/tbody/tr[2]      3    Mexico
    sleep   4
    table cell should contain      xpath://*[@id="customers"]     7      3      Italy
*** Keywords ***

