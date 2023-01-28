*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Log In shop
    Comment   Log in with known credentials
    Open Browser  https://www.saucedemo.com/  chrome
    Page Should Contain  Accepted usernames are
    Input Text  user-name  standard_user
    Input Text  password  secret_sauce
    Click Button  login-button
    Page Should Contain  Products
