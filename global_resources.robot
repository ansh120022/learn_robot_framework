*** Keywords ***
Navigate to shop
    Comment   Open shop in browser
    Open Browser  https://www.saucedemo.com/  chrome
    Page Should Contain Button  login-button