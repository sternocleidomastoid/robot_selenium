*** Settings ***
Documentation  login web application page object.

*** Variables ***
${restaurant.login.django_restaurant}    css=a.navbar-brand.mr-4
${restaurant.login.inventories}          css=a[href='/inventories/']
${restaurant.login.login_1}              css=a[href='/login/']
${restaurant.login.success}              login_success
${restaurant.login.menu_items}           css=a[href='/menuitems/']
${restaurant.login.page_loaded_text}     Username
${restaurant.login.page_url}             /login/
${restaurant.login.process_transaction}  css=a[href='/transaction/new/']
${restaurant.login.register}             css=#navbarToggle div:nth-of-type(2) a:nth-of-type(2)
${restaurant.login.sales}                css=a[href='/sales/']
${restaurant.login.sign_up_now}          css=a.ml-2
${restaurant.login.transactions}         css=a[href='/transactions/']

${restaurant.login.username}             id=id_username
${restaurant.login.password}             id=id_password

@{restaurant.login.login_form}           ${restaurant.login.username}    ${restaurant.login.password}
@{restaurant.login.login_form.choices}     single  single
${restaurant.login.login_2}              css=button.btn.btn-outline-info

*** Keywords ***
Click Django Restaurant Link
    [Documentation]  Click on Django Restaurant Link.
    Click Link  ${restaurant.login.django_restaurant}

Click Inventories Link
    [Documentation]  Click on Inventories Link.
    Click Link  ${restaurant.login.inventories}

Click Login 1 Button
    [Documentation]  Click on Login Button.
    Click Link  ${restaurant.login.login_1}

Click Login 2 Button
    [Documentation]  Click on Login Button.
    Click Button  ${restaurant.login.login_2}

Click Menu Items Link
    [Documentation]  Click on Menu Items Link.
    Click Link  ${restaurant.login.menu_items}

Click Process Transaction Link
    [Documentation]  Click on Process Transaction Link.
    Click Link  ${restaurant.login.process_transaction}

Click Register Link
    [Documentation]  Click on Register Link.
    Click Link  ${restaurant.login.register}

Click Sales Link
    [Documentation]  Click on Sales Link.
    Click Link  ${restaurant.login.sales}

Click Sign Up Now Link
    [Documentation]  Click on Sign Up Now Link.
    Click Link  ${restaurant.login.sign_up_now}

Click Transactions Link
    [Documentation]  Click on Transactions Link.
    Click Link  ${restaurant.login.transactions}

Fill
    [Documentation]  Fill every fields in the page.
    login.Set Username Text Field
    login.Set Password Password Field

Fill And Submit
    [Documentation]  Fill every fields in the page and submit it to target page.
    login.Fill
    login.Submit

Set Password Password Field
    [Arguments]  ${password_value}=${DATA['PASSWORD']}
    [Documentation]  Set value to Password Password field.
    Input Text  ${restaurant.login.password}  ${password_value}

Set Username Text Field
    [Arguments]  ${username_value}=${DATA['USERNAME']}
    [Documentation]  Set value to Username Text field.
    Input Text  ${restaurant.login.username}  ${username_value}

Submit
    [Documentation]  Submit the form to target page.
    login.Click Login Button

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${restaurant.login.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${restaurant.login.page_url}
