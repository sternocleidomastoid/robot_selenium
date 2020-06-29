*** Settings ***
Documentation  restaurant.confirm_delete web application page object.

*** Variables ***
${restaurant.confirm_delete.cancel}               css=a.btn.btn-outline-secondary
${restaurant.confirm_delete.django_restaurant}    css=a.navbar-brand.mr-4
${restaurant.confirm_delete.inventories}          css=a[href='/inventories/']
${restaurant.confirm_delete.logout}               css=a[href='/logout/']
${restaurant.confirm_delete.menu_items}           css=a[href='/menuitems/']
${restaurant.confirm_delete.page_loaded_text}     Are you sure you want to delete menu_item "pepsi"
${restaurant.confirm_delete.page_url}             /menuitem/1/delete/
${restaurant.confirm_delete.process_transaction}  css=a[href='/transaction/new/']
${restaurant.confirm_delete.profile}              css=a[href='/profile/']
${restaurant.confirm_delete.sales}                css=a[href='/sales/']
${restaurant.confirm_delete.transactions}         css=a[href='/transactions/']
${restaurant.confirm_delete.yes}                  css=button.btn.btn-outline-danger

*** Keywords ***
Click Cancel Link
    [Documentation]  Click on Cancel Link.
    Click Link  ${restaurant.confirm_delete.cancel}

Click Django Restaurant Link
    [Documentation]  Click on Django Restaurant Link.
    Click Link  ${restaurant.confirm_delete.django_restaurant}

Click Inventories Link
    [Documentation]  Click on Inventories Link.
    Click Link  ${restaurant.confirm_delete.inventories}

Click Logout Link
    [Documentation]  Click on Logout Link.
    Click Link  ${restaurant.confirm_delete.logout}

Click Menu Items Link
    [Documentation]  Click on Menu Items Link.
    Click Link  ${restaurant.confirm_delete.menu_items}

Click Process Transaction Link
    [Documentation]  Click on Process Transaction Link.
    Click Link  ${restaurant.confirm_delete.process_transaction}

Click Profile Link
    [Documentation]  Click on Profile Link.
    Click Link  ${restaurant.confirm_delete.profile}

Click Sales Link
    [Documentation]  Click on Sales Link.
    Click Link  ${restaurant.confirm_delete.sales}

Click Transactions Link
    [Documentation]  Click on Transactions Link.
    Click Link  ${restaurant.confirm_delete.transactions}

Click Yes Button
    [Documentation]  Click on Yes Button.
    Click Button  ${restaurant.confirm_delete.yes}

Submit
    [Documentation]  Submit the form to target page.
    restaurant.confirm_delete.Click Yes Button

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${restaurant.confirm_delete.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${restaurant.confirm_delete.page_url}
