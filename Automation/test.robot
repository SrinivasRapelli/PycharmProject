*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com
${browser}  Chrome
${demoQa}   https://demoqa.com/
${demoWorkShop}  https://demowebshop.tricentis.com/

*** Test Cases ***
#Google
#    Open Browser   ${url}   ${browser}
#    Maximize Browser Window
#    Sleep  10
#    Close Browser
#
#DemoQa
#    Open Browser    ${demoQa}   ${browser}
#    Maximize Browser Window
#    #Click Element   xpath=//*[@id="app"]/div/div/div[2]/div/div[1]/div/div[3]/h5
#    Sleep   15
#    Close Browser
Demo
   loginToDemoWebShop


*** Keywords ***
loginToDemoWebShop
    Open Browser    ${demoWorkShop}  ${browser}
    Maximize Browser Window
    Sleep   10
    Click Element   class=ico-login
    Input Text      id=Email    srinivasrapelli1243312@gmail.com
    Input Text      id=Password     111111
    Click Element   class=button-1 login-button
    Sleep           10
     cli