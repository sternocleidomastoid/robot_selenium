*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../django_restaurant/restaurant.resource
Resource    ../utilities.resource

Test Setup  restaurant.Setup With Login
Test Teardown  Basic Teardown


*** Test Cases ***
Successful Add MenuItem
    Add Menu Item
    Page Should Contain Texts   ${restaurant.menu_item.name}    ${restaurant.menu_item.price}
    ...                         @{restaurant.menu_item.ingredients}     ${restaurant.menu_item.default_status}
    Delete Menu Item

Unsuccessful Duplicate Add MenuItem
    Add Menu Item
    Add Menu Item
    Page Should Contain Texts   Menu item with this Name already exists.
    Delete Menu Item

Successful Delete MenuItem
    Add Menu Item
    Delete Menu Item
    Confirm MenuItem Not Present

*** Keywords ***
Confirm MenuItem Not Present
    Go To Page           restaurant.login_success
    Click Element        ${restaurant.login_success.menu_items}
    Page Should Not Contain    ${restaurant.menu_item.name}