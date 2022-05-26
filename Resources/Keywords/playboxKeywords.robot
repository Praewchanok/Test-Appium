*** Settings ***
Library         AppiumLibrary
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Keywords ***
Open Playbox
    [Documentation]     Owner: Praew
    Open Application    
    ...     http://localhost:4723/wd/hub
    ...     platformName=Android
    ...     platformVersion=7.1.2      
    ...     deviceName=192.168.1.35:6555
    ...     automationName=UiAutomator2
    ...     appActivity=net.vimmi.settopbox.ui.main.MainActivity              
    ...     appPackage=com.ais.playbox.prod
    ...     noReset=true
    ...     udid=192.168.1.35:6555

Setting UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${select_ui_language}
    Click Settings Manu       
    Click Preferences Manu
    Select Language     ${select_ui_language}

Setting UI Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}
    Click Settings Manu       
    Click Preferences Manu                 
    Click UI Timeout
    Select Timeout      ${timeout}

Setting Player UI Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}         
    Click Player UI Timeout
    Select Timeout      ${timeout}

Click Settings Manu
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_manu_home}
    Loop For List Manu 
    Wait Element Is Visible         ${lbl_manu_settings}     
    Click Element                   ${lbl_manu_settings}

Loop For List Manu
    # Create List Manu
    # FOR    ${index}    ${name_manu}    IN ENUMERATE    @{LIST_MANU}
    #     Log       ${name_manu}       
    #     Click Down
    # END
    FOR    ${index}    ${name_manu}    IN ENUMERATE    @{LIST_MANU}
        ${text}     Get Text    ${name_manu}        
        IF      "${text}" != "${settings}"
            Click Down
        ELSE
            Click Element       ${lbl_manu_settings}
        END 
    END    

Create List Manu
    @{list_manu}        Create List     ${lbl_manu_home}            ${lbl_manu_home}                ${lbl_manu_live_tv}     
    ...     ${lbl_manu_live_sports}     ${lbl_manu_football}        ${lbl_manu_tv_channels}         ${lbl_manu_movies}
    ...     ${lbl_manu_series}          ${lbl_manu_varieties}       ${lbl_manu_concert_or_mv}       ${lbl_manu_kids}
    ...     ${lbl_manu_anime}           ${lbl_manu_sports}          ${lbl_manu_play_news}           ${lbl_manu_ais_360_channel}
    ...     ${lbl_manu_netflix}         ${lbl_manu_disney_plus_hotstar}     
    ...     ${lbl_manu_we_tv}           ${lbl_manu_viu}             ${lbl_manu_ais_karaoke}         ${lbl_manu_partner}
    ...     ${lbl_manu_browser}         ${lbl_manu_inbox}           ${lbl_manu_settings}
    Set Test Variable       @{LIST_MANU}     @{list_manu}     

Click Preferences Manu
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_manu_preferences}
    Click Element                   ${lbl_manu_preferences}

Select Language
    [Documentation]     Owner: Praew
    [Arguments]         ${select_ui_language}                
    Click UI Language
    IF         "${select_ui_language}" == "${ui_language_en}"
            Click Element       ${lbl_ui_language_en}
    ELSE IF    "${select_ui_language}" == "${ui_language_th}" or "${select_ui_language}" == "Thai" 
            Click Element       ${lbl_ui_language_th}
    END           

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}
    Wait Element Is Visible         ${timeout}
    Click Element                   ${timeout}

Click UI Language
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_ui_language}
    Click Element                   ${lbl_ui_language}

Click UI Timeout
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_ui_timeout}
    Click Element                   ${lbl_ui_timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_player_ui_timeout}
    Click Element                   ${lbl_player_ui_timeout}

Verify Setting UI Preferences Page
    [Documentation]     Owner: Praew
    Wait Element Is Visible              ${lbl_topic}         
    Verify Element Text Down             ${lbl_topic}                        ${topic_preferences}
    Verify Element Text Down             ${lbl_ui_language_en_or_th}         ${ui_language_en_or_th}
    Verify Element Text Down             ${lbl_ui_timeout_never}             ${ui_timeout_never}
    Verify Element Text Down             ${lbl_player_ui_timeout_never}      ${player_ui_timeout_never}
    Verify Element Text Down             ${lbl_audio_language_en_or_th}      ${audio_language_en_or_th}
    Verify Element Text Down             ${lbl_rewind_or_forward_time}       ${rewind_or_forward_time}

Verify Manu
    [Documentation]     Owner: Praew
    Wait Element Is Visible             ${lbl_manu_home}
    Verify Element Text Down            ${lbl_manu_home}                    ${home}
    Verify Element Text Down            ${lbl_manu_live_tv}                 ${live_tv}
    Verify Element Text Down            ${lbl_manu_live_sports}             ${live_sports}
    Verify Element Text Down            ${lbl_manu_football}                ${football}
    Verify Element Text Down            ${lbl_manu_tv_channels}             ${tv_channels}
    Verify Element Text Down            ${lbl_manu_movies}                  ${movies}
    Verify Element Text Down            ${lbl_manu_series}                  ${series}
    Verify Element Text Down            ${lbl_manu_varieties}               ${varieties}
    Verify Element Text Down            ${lbl_manu_concert_or_mv}           ${concert_or_mv}
    Verify Element Text Down            ${lbl_manu_kids}                    ${kids}
    Verify Element Text Down            ${lbl_manu_anime}                   ${anime}
    Verify Element Text Down            ${lbl_manu_sports}                  ${sports}
    Verify Element Text Down            ${lbl_manu_play_news}               ${play_news}
    Verify Element Text Down            ${lbl_manu_ais_360_channel}         ${ais_360_channel}
    Verify Element Text Down            ${lbl_manu_netflix}                 ${netflix}
    Verify Element Text Down            ${lbl_manu_disney_plus_hotstar}     ${disney_plus_hotstar}
    Verify Element Text Down            ${lbl_manu_we_tv}                   ${we_tv}
    Verify Element Text Down            ${lbl_manu_viu}                     ${viu}
    Verify Element Text Down            ${lbl_manu_ais_karaoke}             ${ais_karaoke}
    Verify Element Text Down            ${lbl_manu_partner}                 ${partner}
    Verify Element Text Down            ${lbl_manu_browser}                 ${browser}
    Verify Element Text Down            ${lbl_manu_inbox}                   ${inbox}
    Verify Element Text Down            ${lbl_manu_settings}                ${settings}

Verify Banner App And Movies
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_banner_one}
    Verify Element Is Visible       ${pic_banner_two}
    Verify Element Is Visible       ${pic_banner_three}
    Verify Element Is Visible       ${pic_netflix}
    Verify Element Is Visible       ${pic_disney_plus_hotstar}
    Verify Element Is Visible       ${pic_we_tv}      
    Verify Element Is Visible       ${pic_triage}                              
    Verify Element Is Visible       ${pic_nha_harn_the_series}
    Verify Element Is Visible       ${pic_bad_beauty}

# Wait Element
Wait Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Until Element Is Visible       ${locator}      30s

# Click Element
Click Back
    [Documentation]     Owner: Praew
    Press Keycode    4

Click Back Two Time
    [Documentation]     Owner: Praew
    Press Keycode    4
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

# Verify Text
Verify Element Text
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}

Verify Element Text up
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}
    Click Up

Verify Element Text Down
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}
    Click Down

Verify Element Text Left
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}
    Click Left

Verify Element Text Right
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}
    Click Right

# Verify Visible
Verify Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}

Verify Element Is Visible Up
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}
    Click Up    

Verify Element Is Visible Down
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}
    Click Down

Verify Element Is Visible Left
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}
    Click Left

Verify Element Is Visible Right
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}
    Click Right
