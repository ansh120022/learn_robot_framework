*** Settings ***
Library  SeleniumLibrary
Resource  ../global_resources.robot

Test Setup  Navigate to shop
Test Teardown  Close Browser

*** Test Cases ***
Log In standart user
    Comment   Log in with standart user credentials
    Fill in credentials  standard_user  secret_sauce
    Page Should Contain  Products

Log In locked out user
    Comment   Log in with locked out user credentials
    Fill in credentials  locked_out_user  secret_sauce
    Page Should Contain  Epic sadface: Sorry, this user has been locked out.


*** Keywords ***
Fill in credentials
    [Arguments]  ${username}  ${password}

    Input Text  user-name  ${username}
    Input Text  password   ${password}
    Click Button  login-button