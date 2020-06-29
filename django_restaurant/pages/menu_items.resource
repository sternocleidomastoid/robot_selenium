*** Settings ***
Documentation  restaurant.menu_items web application page object.

*** Variables ***
${restaurant.menu_items.add_menuitem}                          css=a.nav-bar.nav
${restaurant.menu_items.django_restaurant}                     css=a.navbar-brand.mr-4
${restaurant.menu_items.inventories}                           css=a[href='/inventories/']
${restaurant.menu_items.logout}                                css=a[href='/logout/']
${restaurant.menu_items.lychee_pandan_farfait_available_7_00}  css=a[href='/menuitem/3/']
${restaurant.menu_items.mango_float_disabled_13_00}            css=a[href='/menuitem/4/']
${restaurant.menu_items.menu_items}                            css=a[href='/menuitems/']
${restaurant.menu_items.page_loaded_text}                      00 - salted cream with mango [available]
${restaurant.menu_items.page_url}                              /menuitems/
${restaurant.menu_items.pepsi_available_5_00}                  css=a[href='/menuitem/1/']
${restaurant.menu_items.plain_rice_available_7_00}             css=a[href='/menuitem/9/']
${restaurant.menu_items.process_transaction}                   css=a[href='/transaction/new/']
${restaurant.menu_items.profile}                               css=a[href='/profile/']
${restaurant.menu_items.sales}                                 css=a[href='/sales/']
${restaurant.menu_items.salted_cream_with_mango_1_00}          css=a[href='/menuitem/11/']
${restaurant.menu_items.stir_fried_pork_belly_15_00}           css=a[href='/menuitem/6/']
${restaurant.menu_items.transactions}                          css=a[href='/transactions/']
${restaurant.menu_items.twice_cooked_eggplant_with_3_00}       css=a[href='/menuitem/7/']
${restaurant.menu_items.xpath}                                 /html/body/main/div/div[1]/h3[*]/a

*** Keywords ***
Click 1.00 Salted Cream With Mango Link
    [Documentation]  Click on 1.00 Salted Cream With Mango Available Link.
    Click Link  ${restaurant.menu_items.salted_cream_with_mango_1_00}

Click 11.00 Fanta Available Link
    [Documentation]  Click on 11.00 Fanta Available Link.
    Click Link  ${restaurant.menu_items.fanta_available_11_00}

Click 13.00 Fish And Veggie Curry Link
    [Documentation]  Click on 13.00 Fish And Veggie Curry Available Link.
    Click Link  ${restaurant.menu_items.fish_and_veggie_curry_13_00}

Click 13.00 Mango Float Disabled Link
    [Documentation]  Click on 13.00 Mango Float Disabled Link.
    Click Link  ${restaurant.menu_items.mango_float_disabled_13_00}

Click 15.00 Stir Fried Pork Belly Link
    [Documentation]  Click on 15.00 Stir Fried Pork Belly Available Link.
    Click Link  ${restaurant.menu_items.stir_fried_pork_belly_15_00}

Click 3.00 Fried Rice Available Link
    [Documentation]  Click on 3.00 Fried Rice Available Link.
    Click Link  ${restaurant.menu_items.fried_rice_available_3_00}

Click 3.00 Twice Cooked Eggplant With Link
    [Documentation]  Click on 3.00 Twice Cooked Eggplant With Tomato Available Link.
    Click Link  ${restaurant.menu_items.twice_cooked_eggplant_with_3_00}

Click 5.00 Hainanese Chicken Available Link
    [Documentation]  Click on 5.00 Hainanese Chicken Available Link.
    Click Link  ${restaurant.menu_items.hainanese_chicken_available_5_00}

Click 5.00 Pepsi Available Link
    [Documentation]  Click on 5.00 Pepsi Available Link.
    Click Link  ${restaurant.menu_items.pepsi_available_5_00}

Click 7.00 Lychee Pandan Farfait Available Link
    [Documentation]  Click on 7.00 Lychee Pandan Farfait Available Link.
    Click Link  ${restaurant.menu_items.lychee_pandan_farfait_available_7_00}

Click 7.00 Plain Rice Available Link
    [Documentation]  Click on 7.00 Plain Rice Available Link.
    Click Link  ${restaurant.menu_items.plain_rice_available_7_00}

Click Add Menuitem Link
    [Documentation]  Click on Add Menuitem Link.
    Click Link  ${restaurant.menu_items.add_menuitem}

Click Django Restaurant Link
    [Documentation]  Click on Django Restaurant Link.
    Click Link  ${restaurant.menu_items.django_restaurant}

Click Inventories Link
    [Documentation]  Click on Inventories Link.
    Click Link  ${restaurant.menu_items.inventories}

Click Logout Link
    [Documentation]  Click on Logout Link.
    Click Link  ${restaurant.menu_items.logout}

Click Menu Items Link
    [Documentation]  Click on Menu Items Link.
    Click Link  ${restaurant.menu_items.menu_items}

Click Process Transaction Link
    [Documentation]  Click on Process Transaction Link.
    Click Link  ${restaurant.menu_items.process_transaction}

Click Profile Link
    [Documentation]  Click on Profile Link.
    Click Link  ${restaurant.menu_items.profile}

Click Sales Link
    [Documentation]  Click on Sales Link.
    Click Link  ${restaurant.menu_items.sales}

Click Transactions Link
    [Documentation]  Click on Transactions Link.
    Click Link  ${restaurant.menu_items.transactions}

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${restaurant.menu_items.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${restaurant.menu_items.page_url}
