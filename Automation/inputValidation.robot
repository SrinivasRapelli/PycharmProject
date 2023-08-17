*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${Url}      https://demo.guru99.com/
${browser}    chrome


*** Test Cases ***
Test1
    open browser     ${Url}      ${browser}
    delay
#    wait for page contains    ${Url}
    maximize browser window

    title should be  Guru99 Bank Home Page

    click element       //a[contains(.,'New Tours')]
    delay
    click element       //a[contains(.,'REGISTER')]
    input text          name=firstName    Srinivas
    input text          name=lastName     Rapelli
    input text          name=phone        1234567890
    input text          name=userName     SrinivasR
    input text          name=address1     Vellampalle
    input text          name=city         Hyd
    input text          name=state        Telangana
    input text          name=postalCode   506356
    Select from list by value    name=country    INDIA
    input text          name=email        srinivasrapelli@gmail.com
    input text          name=password      111111
    input text          name=confirmPassword    111111
    Click button          name=submit

    delay
    ${getUserName} =  Get Text   xpath://*[contains(text(),"Your")]
    ${getName} =   Get text    xpath://*[contains(text(),"Dear")]
    delay
    Log   Element Text: ${getUserName}
    Log   Element Text: ${getName}
*** Keywords ***
delay
    sleep   5