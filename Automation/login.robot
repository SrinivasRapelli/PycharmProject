*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.guru99.com/
${browser}  Chrome
${demoQa}   https://demoqa.com/
${demoWorkShop}  https://demowebshop.tricentis.com/

*** Test Cases ***
Google
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
     delay
    Input Text      name=emailid   srinivasrapelli888@gmail.com
    Click Element    name=btnLogin
     delay
    ${getData1} =   Get Text  xpath=/html/body/table/tbody/tr[4]/td[2]
    ${getData2} =   Get Text  xpath=/html/body/table/tbody/tr[5]/td[2]
    delay
    Log  Element Text: ${getData1}
    Log  Element Text: ${getData2}

    Close Browser

*** Keywords ***
delay
   Sleep  3