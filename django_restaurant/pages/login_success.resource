*** Settings ***
Documentation  login_success web application page object.

*** Variables ***
${restaurant.login_success.django_restaurant}    css=a.navbar-brand.mr-4
${restaurant.login_success.inventories}          css=a[href='/inventories/']
${restaurant.login_success.logout}               css=a[href='/logout/']
${restaurant.login_success.menu_items}           css=a[href='/menuitems/']
${restaurant.login_success.page_loaded_text}     Profile
${restaurant.login_success.page_url}             /
${restaurant.login_success.process_transaction}  css=a[href='/transaction/new/']
${restaurant.login_success.profile}              css=a[href='/profile/']
${restaurant.login_success.sales}                css=a[href='/sales/']
${restaurant.login_success.transactions}         css=a[href='/transactions/']

*** Keywords ***
Click Django Restaurant Link
    [Documentation]  Click on Django Restaurant Link.
    Click Link  ${restaurant.login_success.django_restaurant}

Click Inventories Link
    [Documentation]  Click on Inventories Link.
    Click Link  ${restaurant.login_success.inventories}

Click Logout Link
    [Documentation]  Click on Logout Link.
    Click Link  ${restaurant.login_success.logout}

Click Menu Items Link
    [Documentation]  Click on Menu Items Link.
    Click Link  ${restaurant.login_success.menu_items}

Click Process Transaction Link
    [Documentation]  Click on Process Transaction Link.
    Click Link  ${restaurant.login_success.process_transaction}

Click Profile Link
    [Documentation]  Click on Profile Link.
    Click Link  ${restaurant.login_success.profile}

Click Sales Link
    [Documentation]  Click on Sales Link.
    Click Link  ${restaurant.login_success.sales}

Click Transactions Link
    [Documentation]  Click on Transactions Link.
    Click Link  ${restaurant.login_success.transactions}

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${restaurant.login_success.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${restaurant.login_success.page_url}
