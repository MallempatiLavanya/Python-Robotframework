*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest1

    open browser    ${url}   ${browser}
    click link  xpath://a[@class='ico-login']
    input text  id:Email   pavanLtraining@gmail.com
    input text  id:Password    Test@123
    click element  xpath://button[@class='button-1 login-button']
    close browser

LoginTest2

    open browser    https://demo.nopcommerce.com/   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email   pavanLtraining@gmail.com
    input text  id:Password    Test@123
    click element  xpath://button[@class='button-1 login-button']