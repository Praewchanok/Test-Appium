*** Settings ***
Library         AppiumLibrary
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Keywords ***
Open Playbox
    [Documentation]     Owner: Praew
    Open Application    
    ...     ${http}                             platformName=${platformName}        platformVersion=${platformVersion}      
    ...     deviceName=${deviceName}            automationName=${automationName}    appActivity=${appActivity}              
    ...     appPackage=${appPackage}            noReset=${noReset}                  udid=${udid}

Setting UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${select_ui_language}
    Click Settings Manu       
    Click Preferences Manu
    Select Language                 ${select_ui_language}
    # Verify Element Text     ${lbl_ui_language_en_or_th}     ${ui_language_en_or_th}

Click Settings Manu
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_manu_home}
    Loop For List Manu 
    Wait Element Is Visible         ${lbl_manu_settings}     
    Click Element                   ${lbl_manu_settings}

Loop For List Manu
    Create List Manu
    FOR    ${index}    ${name_manu}    IN ENUMERATE    @{LIST_MANU}
        Log     ${name_manu}
        Click Down
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
    ELSE IF    "${select_ui_language}" == "${lbl_ui_language_th}"
            Click Element       ${lbl_ui_language_th}
    END           

Click UI Language
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_ui_language}
    Click Element                   ${lbl_ui_language}

Setting UI Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}                 
    Click UI Timeout
    Select Timeout      ${timeout}

Click UI Timeout
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_ui_timeout}
    Click Element                   ${lbl_ui_timeout}

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}
    Wait Element Is Visible         ${timeout}
    Click Element                   ${timeout}

Setting Player UI Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}         
    Click Player UI Timeout
    Select Timeout      ${timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_player_ui_timeout}
    Click Element                   ${lbl_player_ui_timeout}

Verify Setting UI Preferences Page
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_topic}         
    Verify Element Text             ${lbl_topic}                        ${preferences}
    Verify Element Text             ${lbl_ui_language_en_or_th}         ${ui_language_en_or_th}
    Verify Element Text             ${lbl_ui_timeout_never}             ${ui_timeout_never}
    Verify Element Text             ${lbl_player_ui_timeout_never}      ${player_ui_timeout_never}
    Verify Element Text             ${lbl_audio_language_en_or_th}      ${audio_language_en_or_th}
    Verify Element Text             ${lbl_rewind_or_forward_time}       ${rewind_or_forward_time}

Verify Manu Home Page
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_manu_home}
    Verify Element Text             ${lbl_manu_home}                    ${home}
    Verify Element Text             ${lbl_manu_live_tv}                 ${live_tv}
    Verify Element Text             ${lbl_manu_live_sports}             ${live_sports}
    Verify Element Text             ${lbl_manu_football}                ${football}
    Verify Element Text             ${lbl_manu_tv_channels}             ${tv_channels}             
    Verify Element Text             ${lbl_manu_movies}                  ${movies}
    Verify Element Text             ${lbl_manu_series}                  ${series}
    Verify Element Text             ${lbl_manu_varieties}               ${varieties}
    Verify Element Text             ${lbl_manu_concert_or_mv}           ${concert_or_mv}
    Verify Element Text             ${lbl_manu_kids}                    ${kids}
    Verify Element Text             ${lbl_manu_anime}                   ${anime}
    Verify Element Text             ${lbl_manu_sports}                  ${sports}
    Verify Element Text             ${lbl_manu_play_news}               ${play_news}
    Verify Element Text             ${lbl_manu_ais_360_channel}         ${ais_360_channel}
    Verify Element Text             ${lbl_manu_netflix}                 ${netflix}
    Verify Element Text             ${lbl_manu_disney_plus_hotstar}     ${disney_plus_hotstar}     
    Verify Element Text             ${lbl_manu_we_tv}                   ${we_tv}
    Verify Element Text             ${lbl_manu_viu}                     ${viu}
    Verify Element Text             ${lbl_manu_ais_karaoke}             ${ais_karaoke}
    Verify Element Text             ${lbl_manu_partner}                 ${partner}
    Verify Element Text             ${lbl_manu_browser}                 ${browser}
    Verify Element Text             ${lbl_manu_inbox}                   ${inbox}
    Verify Element Text             ${lbl_manu_settings}                ${settings}
    
Wait Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Until Element Is Visible       ${locator}      30s

Verify Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}

Verify Element Text
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}
    Click Down          
# Verify Banner Home Page
#     [Documentation]     Owner: Praew
#     Wait Element Is Visible         ${lbl_clock}
#     Element Should Be Visible

Click Down
    [Documentation]     Owner: Praew
    Press Keycode    20

Click Back
    [Documentation]     Owner: Praew
    Press Keycode    4

Click Home
    [Documentation]     Owner: Praew
    Press Keycode    3
