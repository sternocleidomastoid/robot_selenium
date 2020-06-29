*** Settings ***
#Library     DjangoRestaurant
Documentation  login_success web application page object.
Resource    pages/login.resource
Resource    pages/login_success.resource
Resource    pages/confirm_delete.resource
Resource    pages/add_menu_item.resource
Resource    pages/menu_items.resource
Resource    pages/menu_item_detail.resource

Resource    test_defaults.resource

Resource    ../utilities.resource

*** Keywords ***
Login
    [Arguments]   ${username}=${restaurant.admin_username}   ${password}=${restaurant.admin_password}
    Go To Page    restaurant.login
    Fill Form     ${restaurant.login.login_form}  ${restaurant.login.login_form.choices}  ${username}  ${password}
    Click Element       ${restaurant.login.login_2}

Logout
    Wait Until Element Is Visible   ${restaurant.login_success.logout}
    Click Element       ${restaurant.login_success.logout}

Setup With Login
    Basic Setup
    Login

Add Menu Item
    [Arguments]   ${name}=${restaurant.menu_item.name}  ${price}=${restaurant.menu_item.price}
    ...           ${ingredients}=${restaurant.menu_item.ingredients}
    Click Element   ${restaurant.login.menu_items}
    Click Element   ${restaurant.menu_items.add_menuitem}
    Fill Form  ${restaurant.add_menu_item.form}  ${restaurant.add_menu_item.form.choices}
    ...        ${name}  ${price}  ${ingredients}
    Click Element       ${restaurant.add_menu_item.add}

Delete Menu Item
    [Arguments]     ${menu_item}=${restaurant.menu_item.name}
    Click Element   ${restaurant.login.menu_items}
    Wait Until Element Is Visible   partial link:${menu_item}
    Click ELement   partial link:${menu_item}
    Click ELement   ${restaurant.menu_item_detail.delete}
    Click Element   ${restaurant.confirm_delete.yes}

Delete All Menu Items
    Click Element   ${restaurant.login.menu_items}
    ${elements}=    Get WebElements    xpath:${restaurant.menu_items.xpath}
        FOR    ${element}    IN    @{elements}
        Log To Console   ${element.text}
    END
