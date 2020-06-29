*** Settings ***
Documentation  add_menu_item web application page object.

*** Variables ***
${restaurant.add_menu_item.add_here}             css=a.ml-2
${restaurant.add_menu_item.back}                 css=a.nav-bar.nav
${restaurant.add_menu_item.django_restaurant}    css=a.navbar-brand.mr-4
${restaurant.add_menu_item.inventories}          css=a[href='/inventories/']
${restaurant.add_menu_item.logout}               css=a[href='/logout/']
${restaurant.add_menu_item.menu_items}           css=#navbarToggle div:nth-of-type(1) a:nth-of-type(2)
${restaurant.add_menu_item.page_loaded_text}     You can put any information here you'd like
${restaurant.add_menu_item.page_url}             /menuitem/new/
${restaurant.add_menu_item.process_transaction}  css=a[href='/transaction/new/']
${restaurant.add_menu_item.profile}              css=a[href='/profile/']
${restaurant.add_menu_item.sales}                css=a[href='/sales/']
${restaurant.add_menu_item.transactions}         css=a[href='/transactions/']

${restaurant.add_menu_item.name}                 id=id_name
${restaurant.add_menu_item.price}                id=id_price
${restaurant.add_menu_item.ingredients}          id=id_ingredients
@{restaurant.add_menu_item.form}                 ${restaurant.add_menu_item.name}  ${restaurant.add_menu_item.price}  ${restaurant.add_menu_item.ingredients}
@{restaurant.add_menu_item.form.choices}           single  single  multiple
${restaurant.add_menu_item.add}                  css=button.btn.btn-outline-info

*** Keywords ***
Click Add Button
    [Documentation]  Click on Add Button.
    Click Button  ${restaurant.add_menu_item.add}

Click Add Here Link
    [Documentation]  Click on Add Here Link.
    Click Link  ${restaurant.add_menu_item.add_here}

Click Back Link
    [Documentation]  Click on Back Link.
    Click Link  ${restaurant.add_menu_item.back}

Click Django Restaurant Link
    [Documentation]  Click on Django Restaurant Link.
    Click Link  ${restaurant.add_menu_item.django_restaurant}

Click Inventories Link
    [Documentation]  Click on Inventories Link.
    Click Link  ${restaurant.add_menu_item.inventories}

Click Logout Link
    [Documentation]  Click on Logout Link.
    Click Link  ${restaurant.add_menu_item.logout}

Click Menu Items Link
    [Documentation]  Click on Menu Items Link.
    Click Link  ${restaurant.add_menu_item.menu_items}

Click Process Transaction Link
    [Documentation]  Click on Process Transaction Link.
    Click Link  ${restaurant.add_menu_item.process_transaction}

Click Profile Link
    [Documentation]  Click on Profile Link.
    Click Link  ${restaurant.add_menu_item.profile}

Click Sales Link
    [Documentation]  Click on Sales Link.
    Click Link  ${restaurant.add_menu_item.sales}

Click Transactions Link
    [Documentation]  Click on Transactions Link.
    Click Link  ${restaurant.add_menu_item.transactions}

Fill
    [Documentation]  Fill every fields in the page.
    add_menu_item.Set Name Text Field
    add_menu_item.Set Price Number Field
    add_menu_item.Set Ingredients Drop Down List Field

Fill And Submit
    [Documentation]  Fill every fields in the page and submit it to target page.
    add_menu_item.Fill
    add_menu_item.Submit

Set Ingredients Drop Down List Field
    [Arguments]  ${ingredients_value}=${DATA['INGREDIENTS']}
    [Documentation]  Set value to Ingredients Drop Down List field.
    Select From List By Label  ${restaurant.add_menu_item.ingredients}  ${ingredients_value}

Set Name Text Field
    [Arguments]  ${name_value}=${DATA['NAME']}
    [Documentation]  Set value to Name Text field.
    Input Text  ${restaurant.add_menu_item.name}  ${name_value}

Set Price Number Field
    [Arguments]  ${price_value}=${DATA['PRICE']}
    [Documentation]  Set value to Price Number field.
    Input Text  ${restaurant.add_menu_item.price}  ${price_value}

Submit
    [Documentation]  Submit the form to target page.
    add_menu_item.Click Add Button

Unset Ingredients Drop Down List Field
    [Arguments]  ${ingredients_value}=${DATA['INGREDIENTS']}
    [Documentation]  Unset value from Ingredients Drop Down List field.
    Unselect From List By Label  ${restaurant.add_menu_item.ingredients}  ${ingredients_value}

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${restaurant.add_menu_item.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${restaurant.add_menu_item.page_url}
