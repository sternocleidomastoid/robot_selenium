*** Settings ***
Documentation  restaurant.menu_item_detail web application page object.

*** Variables ***
${restaurant.menu_item_detail.back}                 css=a.nav-bar.nav
${restaurant.menu_item_detail.change}               css=a.btn.btn-secondary
${restaurant.menu_item_detail.delete}               css=a.btn.btn-danger
${restaurant.menu_item_detail.django_restaurant}    css=a.navbar-brand.mr-4
${restaurant.menu_item_detail.inventories}          css=a[href='/inventories/']
${restaurant.menu_item_detail.logout}               css=a[href='/logout/']
${restaurant.menu_item_detail.menu_items}           css=#navbarToggle div:nth-of-type(1) a:nth-of-type(2)
${restaurant.menu_item_detail.page_loaded_text}     You can put any information here you'd like
${restaurant.menu_item_detail.page_url}             /menuitem/1/
${restaurant.menu_item_detail.process_transaction}  css=a[href='/transaction/new/']
${restaurant.menu_item_detail.profile}              css=a[href='/profile/']
${restaurant.menu_item_detail.sales}                css=a[href='/sales/']
${restaurant.menu_item_detail.transactions}         css=a[href='/transactions/']

*** Keywords ***
Click Back Link
    [Documentation]  Click on Back Link.
    Click Link  ${restaurant.menu_item_detail.back}

Click Change Link
    [Documentation]  Click on Change Link.
    Click Link  ${restaurant.menu_item_detail.change}

Click Delete Link
    [Documentation]  Click on Delete Link.
    Click Link  ${restaurant.menu_item_detail.delete}

Click Django Restaurant Link
    [Documentation]  Click on Django Restaurant Link.
    Click Link  ${restaurant.menu_item_detail.django_restaurant}

Click Inventories Link
    [Documentation]  Click on Inventories Link.
    Click Link  ${restaurant.menu_item_detail.inventories}

Click Logout Link
    [Documentation]  Click on Logout Link.
    Click Link  ${restaurant.menu_item_detail.logout}

Click Menu Items Link
    [Documentation]  Click on Menu Items Link.
    Click Link  ${restaurant.menu_item_detail.menu_items}

Click Process Transaction Link
    [Documentation]  Click on Process Transaction Link.
    Click Link  ${restaurant.menu_item_detail.process_transaction}

Click Profile Link
    [Documentation]  Click on Profile Link.
    Click Link  ${restaurant.menu_item_detail.profile}

Click Sales Link
    [Documentation]  Click on Sales Link.
    Click Link  ${restaurant.menu_item_detail.sales}

Click Transactions Link
    [Documentation]  Click on Transactions Link.
    Click Link  ${restaurant.menu_item_detail.transactions}

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${restaurant.menu_item_detail.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${restaurant.menu_item_detail.page_url}
