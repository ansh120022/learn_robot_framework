*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Log In shop
  Comment   Log in with known credentials
  Open Browser  https://www.saucedemo.com/  chrome