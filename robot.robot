*** Settings ***
Documentation     Simple example using Selenium2Library.
Library           Selenium2Library
Library           OperatingSystem
Suite Setup  Go to homepage

*** Variables ***
${HOMEPAGE}      https://hotline.ua/
${BROWSER}       Firefox

*** Test Cases ***
Google devops and find eficode
   Google and check results  Iphone 7
  
*** Keywords ***
Google and check results
    [Arguments]  ${searchkey}

    Input Text  id=searchbox  ${searchkey}
    Press Key    name=q    \\13
    Wait Until Page Contains  ${searchkey}
    Click Link  xpath=//*[@id="page-search"]/div[2]/div/div[1]/div[3]/div/ul/li[1]/div[2]/p/a

Go to homepage
	Open Browser   ${HOMEPAGE}   ${BROWSER}
