*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../django_restaurant/restaurant.resource
Resource    ../utilities.resource
Test Setup  Basic Setup
Test Teardown  Basic Teardown


*** Test Cases ***
Successful Login
    restaurant.Log In
    login_success.Verify Page Loaded

Unsuccessful Login
    restaurant.Log In   password=incorrect
    Wait Until Page Contains    Please enter a correct username and password.

Logout
    restaurant.Log In
    restaurant.Log Out
    Wait Until Page Contains    Successfully logged out
