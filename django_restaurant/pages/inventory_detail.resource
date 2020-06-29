*** Settings ***
Documentation  inventory_detail web application page object.

*** Variables ***
${restaurant.inventory_detail.back}                 css=a.nav-bar.nav
${restaurant.inventory_detail.change}               css=a.btn.btn-secondary
${restaurant.inventory_detail.delete}               css=a.btn.btn-danger
${restaurant.inventory_detail.django_restaurant}    css=a.navbar-brand.mr-4
${restaurant.inventory_detail.inventories}          css=#navbarToggle div:nth-of-type(1) a:nth-of-type(3)
${restaurant.inventory_detail.logout}               css=a[href='/logout/']
${restaurant.inventory_detail.menu_items}           css=a[href='/menuitems/']
${restaurant.inventory_detail.page_loaded_text}     You can put any information here you'd like
${restaurant.inventory_detail.page_url}             /inventory/15/
${restaurant.inventory_detail.process_transaction}  css=a[href='/transaction/new/']
${restaurant.inventory_detail.profile}              css=a[href='/profile/']
${restaurant.inventory_detail.sales}                css=a[href='/sales/']
${restaurant.inventory_detail.transactions}         css=a[href='/transactions/']

*** Keywords ***
Click Back Link
    [Documentation]  Click on Back Link.
    Click Link  ${restaurant.inventory_detail.back}

Click Change Link
    [Documentation]  Click on Change Link.
    Click Link  ${restaurant.inventory_detail.change}

Click Delete Link
    [Documentation]  Click on Delete Link.
    Click Link  ${restaurant.inventory_detail.delete}

Click Django Restaurant Link
    [Documentation]  Click on Django Restaurant Link.
    Click Link  ${restaurant.inventory_detail.django_restaurant}

Click Inventories Link
    [Documentation]  Click on Inventories Link.
    Click Link  ${restaurant.inventory_detail.inventories}

Click Logout Link
    [Documentation]  Click on Logout Link.
    Click Link  ${restaurant.inventory_detail.logout}

Click Menu Items Link
    [Documentation]  Click on Menu Items Link.
    Click Link  ${restaurant.inventory_detail.menu_items}

Click Process Transaction Link
    [Documentation]  Click on Process Transaction Link.
    Click Link  ${restaurant.inventory_detail.process_transaction}

Click Profile Link
    [Documentation]  Click on Profile Link.
    Click Link  ${restaurant.inventory_detail.profile}

Click Sales Link
    [Documentation]  Click on Sales Link.
    Click Link  ${restaurant.inventory_detail.sales}

Click Transactions Link
    [Documentation]  Click on Transactions Link.
    Click Link  ${restaurant.inventory_detail.transactions}

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${restaurant.inventory_detail.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${restaurant.inventory_detail.page_url}
