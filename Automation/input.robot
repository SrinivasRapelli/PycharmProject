*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Url}     https://www.google.co.in/
${browser}    chrome
*** Test Cases ***
textBox
    Open Browser   ${Url}   ${browser}
    delay
    Input Text   xpath://*[@id="APjFqb"]    amazon
    delay
    Click button   xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[5]/center/input[1]
    delay
    Clear element text  xpath://*[@id="APjFqb"]
    delay
    input text     xpath://*[@id="APjFqb"]    flipkart
    delay
    click button   xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
    delay


*** Keywords ***
delay
   Sleep  2

