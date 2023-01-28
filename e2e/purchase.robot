*** Settings ***
Library  SeleniumLibrary

Suite Setup  Log standart user

*** Test Cases ***
Make a purchase
    Click Button  add-to-cart-sauce-labs-backpack
    Click Element  shopping_cart_container
    Click Button  checkout
    Input delivery info
    Check overview page content
    Click Button  finish
    Page Should Contain  THANK YOU FOR YOUR ORDER

*** Keywords ***
Log standart user
    Comment   Log in with known credentials
    Open Browser  https://www.saucedemo.com/  chrome
    Page Should Contain  Accepted usernames are
    Input Text  user-name  standard_user
    Input Text  password  secret_sauce
    Click Button  login-button
    Page Should Contain  Products

Input delivery info
    Input Text  first-name  Anastasiia
    Input Text  last-name  Sh
    Input Text  postal-code  6020
    Click Button  continue

Check overview page content
    Page Should Contain  Item total:
    Page Should Contain  Tax:
    Page Should Contain  Total: