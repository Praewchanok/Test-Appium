*** Settings ***
Library         AppiumLibrary
Library         RobotEyes
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Keywords ***
Open Playbox
    [Documentation]     Owner: Praew
    Open Application    
    ...                 ${remote_url}
    ...                 platformName=${platformName}
    ...                 platformVersion=${platformVersion}
    ...                 deviceName=${deviceName}
    ...                 automationName=${automationName}
    ...                 appActivity=${appActivity}
    ...                 appPackage=${appPackage}
    ...                 noReset=${noReset}
    ...                 udid=${udid}

Check Language
    [Documentation]     Owner: Praew
    Wait Element Is Visible       ${icn_search}
    ${text}    Get Element Attribute    ${icn_search}      ${attr_content-desc}
    IF          "${LANG}" == "TH"
        IF      "${text}" == "Search Action"
            Click Settings Menu
            Click Preferences Menu
            Click UI Language
            Select Language     ${LANG}
            Verify Element Is Visible       ${lbl_ui_language_selected}
        ELSE
            Verify Element Is Visible       ${icn_search}
        END
    ELSE        
        IF      "${text}" == "การดำเนินการค้นหา"
            Click Settings Menu
            Click Preferences Menu
            Click UI Language
            Select Language     ${LANG}
            Verify Element Is Visible       ${lbl_ui_language_selected}
        ELSE
            Verify Element Is Visible       ${icn_search}
        END
    END

Open Playbox And Check Language
    [Documentation]     Owner: Praew
    Open Playbox
    Check Language
    Go To Home Page

Click Settings Menu
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_left_panel}
    Loop For Find Menu          22      @{lbl_list_menu}                    

Click Preferences Menu
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_menu_preferences}

Click UI Language
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_ui_language}

Click UI Timeout
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_ui_timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_player_ui_timeout}

Click Movies Menu
    [Documentation]     Owner: Praew
    # Remote Click Element        ${lbl_menu_movies}
    Wait Element Is Visible     ${lbl_left_panel}
    Loop For Find Menu          5      @{lbl_list_menu}

Click Search Icon
    [Documentation]     Owner: Praew
    Click Left
    Remote Click Element        ${icn_search}        

Click Search Button
    [Documentation]     Owner: Praew
    Press Keycode    66

Select UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${LANG}
    IF         "${LANG}" == "EN"
        Remote Click Element    ${lbl_ui_language_en}
    ELSE IF    "${LANG}" == "TH"
        Remote Click Element    ${lbl_ui_language_th}
    END

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Remote Click Element    ${locator}         

Select Type Movies
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Loop For Select     ${locator}      @{lbl_list_movies}      

Verify UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Verify Element Is Visible       ${locator}

Verify UI Timeout And Player UI Timeout
    [Documentation]     Owner: Praew         
    Verify Element Is Visible    ${lbl_topic}
    Verify Element Is Visible    ${lbl_ui_timeout_never}
    Verify Element Is Visible    ${lbl_player_ui_timeout_never}

Verify Menu
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_menu_home}
    Loop For Verify     22      @{lbl_list_menu}

Verify Banner
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_banner_one}
    Verify Element Is Visible       ${pic_banner_two}
    Verify Element Is Visible       ${pic_banner_three}

Verify App
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_netflix}
    Verify Element Is Visible       ${pic_disney}
    Verify Element Is Visible       ${pic_we_tv}
    Verify Element Is Visible       ${pic_viu}

Verify Movies
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${pic_triage}      
    Verify Element Is Visible           ${pic_triage}                              
    Verify Element Is Visible           ${pic_nha_harn_the_series}
    Verify Element Is Visible           ${pic_bad_beauty}

Verify App Position       # robot -d "060622" -v "LANG:EN" -v "images_dir:actual" "playbox.robot" 
    Open Eyes    AppiumLibrary
    Wait Element Is Visible       ${pic_netflix}
    Capture Element     ${pic_netflix}      tolerance=1    name=Netflix
    Capture Element     ${pic_disney}       tolerance=1    name=Disney Plus Hotstar
    Capture Element     ${pic_we_tv}        tolerance=1    name=We TV
    Capture Element     ${pic_viu}          tolerance=1    name=Viu
    Compare Images

Verify Live TV Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_channel_number}
    Verify Element Is Visible    ${pic_channel_logo}
    Verify Element Is Visible    ${lbl_now_on}
    Verify Element Is Visible    ${lbl_next}
    Verify Element Is Visible    ${lbl_duration}
    Verify Element Is Visible    ${lbl_tv_program}
    Verify Element Is Visible    ${lbl_next_tv_program}

Verify Category
    [Documentation]     Owner: Praew
    Go To Top           ${lbl_quality}
    Loop For Verify     14      @{lbl_list_live_tv}

Verify Movies Category
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_menu_promotions}
    Loop For Verify     12      @{lbl_list_movies}

Verify Left Panel
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_left_panel}

Verify Right Panel
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_right_panel}

Verify Highlighting Button
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    # Verify Element Is Visible       ${btn_highlighting}
    Verify Element Attribute    ${locator}    ${attr_selected}    true

Verify Poster Movies
    [Documentation]     Owner: Praew
    [Arguments]         ${locator_title}    ${locator_poster}
    Verify Element Is Visible       ${locator_title}
    Verify Element Is Visible       ${locator_poster}     

Verify Search Page
    [Documentation]     Owner: Praew
    Is Keyboard Shown
    # Open Eyes    AppiumLibrary
    # Wait Element Is Visible       ${pic_keyboard}
    # Capture Element     ${pic_keyboard}      tolerance=1    name=Keyboard
    # Compare Images

Verify Result Search Page
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_result_live}
    Loop For Verify Result Search          

Verify Content Home Page
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_right_panel}
    Loop For Verify  index_menu  list

Verify Home Button
    [Documentation]     Owner: Praew
    Wait Element Is Visible  ${lbl_menu_home}

# Wait Element
Wait Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Until Element Is Visible       ${locator}      30s

# Go To
Go To Home Page
    [Documentation]     Owner: Praew
    Click Back
    Click Home

Go To Top
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Element Is Visible       ${locator}
    Click Up

# Loop
Loop For Find Menu
    [Documentation]     Owner: Praew
    [Arguments]         ${index_menu}      @{list}
    FOR    ${index}    ${menu}    IN ENUMERATE    @{list}
        IF    "${index}" == "${index_menu}"
            Remote Click Element    ${menu}
            BREAK
        ELSE   
            Click Down
        END          
    END
    
Loop For Verify
    [Documentation]     Owner: Praew
    [Arguments]         ${index_menu}    @{list}
    FOR    ${index}     ${menu}    IN ENUMERATE    @{list}
        Verify Element Is Visible       ${menu}
        IF    ${index} != ${index_menu}
            Click Down
        END           
    END

Loop For Verify Result Search
    [Documentation]     Owner: Praew     
    FOR     ${title}    IN    @{lbl_result_search}
        IF          '${title}' == '${lbl_result_live}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_live}
            Loop For Check Status Result Search       ${status}       ${pic_result_live}        ${lbl_result_live_title}        ${lbl_nothing}
            Click Down
        ELSE IF     '${title}' == '${lbl_result_movies}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_movies}
            Loop For Check Status Result Search       ${status}       ${pic_result_movies}      ${lbl_result_movies_title}      ${lbl_nothing}
            Click Down
        ELSE IF     '${title}' == '${lbl_result_series}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_series}
            Loop For Check Status Result Search       ${status}       ${pic_result_series}      ${lbl_result_series}            ${lbl_nothing}
            Click Down
        ELSE IF     '${title}' == '${lbl_result_episodes}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_episodes}
            Loop For Check Status Result Search       ${status}       ${pic_result_episodes}    ${lbl_result_episodes}          ${lbl_nothing}
        END
        # Click Down     
    END

Loop For Check Status Result Search
    [Documentation]     Owner: Praew
    [Arguments]         ${status}    ${locator_pic}    ${locator_text}    ${locator_nothing}
    IF      "${status}" == "True"
        Verify Element Is Visible       ${locator_pic}
        Verify Element Is Visible       ${locator_text}
    ELSE
        Verify Element Is Visible       ${locator_nothing}
    END      

Loop For Select
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}    @{list}
    FOR    ${name_menu}    IN    @{list}
        IF    '${name_menu}' == '${locator}'
            # Verify Element Attribute    ${locator}    ${attr_selected}    true
            BREAK
        ELSE   
            Click Down
        END          
    END

# Input Text
Input Text Box
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${text}
    Wait Until Element Is Visible       ${locator}
    Input Text          ${locator}      ${text}

# Click Button
Click Home
    [Documentation]     Owner: Praew
    Press Keycode    3

Click Back
    [Documentation]     Owner: Praew
    Press Keycode    4

Click Up
    [Documentation]     Owner: Praew
    Press Keycode    19

Click Down
    [Documentation]     Owner: Praew
    Press Keycode    20

Click Left
    [Documentation]     Owner: Praew
    Press Keycode    21

Click Right
    [Documentation]     Owner: Praew
    Press Keycode    22

Click Ok
    [Documentation]     Owner: Praew
    Press Keycode    23     

Click Category Button
    [Documentation]     Owner: Praew
    Press Keycode    82

Click Live TV
    [Documentation]     Owner: Praew
    Press Keycode    133

Remote Click Element
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Element Is Visible       ${locator}
    Click Element       ${locator}              

# Verify
Verify Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Element Is Visible         ${locator}
    Element Should Be Visible       ${locator}

Verify Element Text
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Wait Element Is Visible     ${locator}
    Element Text Should Be      ${locator}      ${expected}   

Verify Element Attribute
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${attr_name}    ${match_pattern}
    Wait Element Is Visible     ${locator}
    Element Attribute Should Match      ${locator}      ${attr_name}    ${match_pattern}    regexp = True

Verify In Range
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${start}    ${end}
    FOR     ${locator}    IN RANGE    ${start}    ${end}
        Verify Element Is Visible       ${locator}
    END
