*** Keywords ***
Go To Page
    [Arguments]    ${page}
    @{words} =  Split String    ${page}    separator=.
    ${host} =  Strip String     ${${words}[0].host}
    ${url} =   Set Variable     ${${page}.page_url}
    Go To       ${host}${url}
    Wait Until Page Contains  ${${page}.page_loaded_text}

Fill Form
    [Arguments]    ${form_fields}    ${form_fields_choice_types}   @{args}
    Wait Until Element Is Visible  ${form_fields}[-1]
    ${length} =     Get Length      ${form_fields}
    FOR    ${INDEX}    IN RANGE    0  ${length}
        Run Keyword If  '${form_fields_choice_types[${INDEX}]}' == 'single'
        ...     Input Text  ${form_fields[${INDEX}]}  ${args}[${INDEX}]
        Run Keyword If  '${form_fields_choice_types[${INDEX}]}' == 'multiple'
        ...     Select Contents From Choices  ${form_fields[${INDEX}]}  ${args}[${INDEX}]
    END

Page Should Contain Texts
    [Arguments]    @{args}
    FOR    ${ELEMENT}    IN    @{args}
        Page Should Contain     ${ELEMENT}
    END

Select Contents From Choices
    [Arguments]    ${locator}    ${labels}
    Select From List By Label   ${locator}    @{labels}

Basic Setup
    [Arguments]   ${browser}=chrome
    Open Browser         browser=${browser}     alias=browser1

Basic Teardown
    Close Browser